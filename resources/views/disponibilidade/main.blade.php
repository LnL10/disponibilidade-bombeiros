<!DOCTYPE html>
<html>
<head>
    <title>Disponibilidade</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales/pt.js"></script>
    
    


<style>
    .navbar {
    background-color: #333;
    width: 13%;
    height: 100vh; 
    position: fixed;
    top: 0;
    left: 0;
    display: flex;
    flex-direction: column;
    }

    .navbarright {
    background-color: #333;
    width: 13%;
    height: 100vh; 
    position: fixed;
    top: 0;
    right: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    }

    .navbar ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    }

    .navbar li {
    display: block;
    text-align:center;

    
    }

    .navbar a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    }

    .navbar a:hover {
    background-color: red;
    }

    .navbar-logo {
    display: inline-block;
    background-color: white;
    border: 3px solid #333;
    padding: 20px 20px;
    border-radius: 20px; 
    margin-top: 8px;
    }

    .navbar-logo img {
    width: 50px; 
    height: auto; 
    vertical-align: middle;
    
    }

    .navbar-logo-text {
    font-family: Courier, monospace;
    font-size: 17px; 
    padding: 10px;
    color: red;
    text-decoration: underline;
    }

    .navbar-bottom {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 50px 20px; 
    }
    

    .navbar-username {
        color: white; 
    }

    .btn-logout {
        background-color: #dc3545; 
        color: white; 
        border: none;   
    }


    
    .modal {        
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        justify-content: center;
        align-items: center;
        z-index: 9999;     
    }

    .modal-content {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        max-width: 400px;
        width: 100%;           
    }
    .temperature-text {
        font-size: 15px;
        color: #007bff;
        font-weight: bold;
        margin-top: 10px;
    }
    .weather-icon {
    width: 100px; 
    height: 100px;
    
    }
 

</style>

<script>

    

    var disponibilidades = @json($disponibilidades);
        

    document.addEventListener('DOMContentLoaded', function() {
                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                    initialView: 'dayGridMonth',
                    selectable: true,
                    locale: 'pt',
                    events: getDisponibilidadeEvents(disponibilidades),
                    eventOrder: 'order', 
                    select: function(info) { 
                        openModal(info.start);
                        calendar.unselect(); 
                    },
            });
           
            calendar.render();
    });


    function getDisponibilidadeEvents(disponibilidades) {
        const events = [];

        disponibilidades.forEach(disponibilidade => {
            if (disponibilidade.DisponibilidadeDeNoite) {
                events.push({
                    title: 'Disp Noite',
                    start: disponibilidade.DiaX,
                    color: 'blue',
                    order: 1 
                });
            }
            if (disponibilidade.DisponibilidadeDeDia) {
                events.push({
                    title: 'Disp Dia',
                    start: disponibilidade.DiaX,
                    color: 'green',
                    order: 2 
                });
            }
        });

        return events;
    }

      
    function openModal(date) {
    const modal = document.getElementById('modal');
    const selectedDate = document.getElementById('selected-date');
    
    const userTimezoneOffset = new Date().getTimezoneOffset() * 60000;
    
    const localDate = new Date(date - userTimezoneOffset);
    
    const formattedDate = localDate.toISOString().slice(0, 10);
    selectedDate.textContent = formattedDate;
    
    modal.style.display = 'flex';
    document.getElementById('availability-date').value = formattedDate;
    }


    function cancelModal() {
        const modal = document.getElementById('modal');
        modal.style.display = 'none';
    }

    document.addEventListener('DOMContentLoaded', function() {
        const temperatureElement = document.getElementById('temperature');
        const weatherIconElement = document.getElementById('weatherIcon'); 

        fetch(`https://api.openweathermap.org/data/2.5/weather?q=Cabeceiras%20de%20Basto&appid=049d47fc423c0c3e6eec5a9ef63153b1&units=metric`)
            .then(response => response.json())
            .then(data => {
                const temperature = data.main.temp;
                console.log('Temperatura:', temperature); 

                const weatherIconCode = data.weather[0].icon;
                 

                const weatherIconUrl = `https://openweathermap.org/img/wn/${weatherIconCode}@2x.png`;
                console.log(weatherIconUrl);

                weatherIconElement.src = weatherIconUrl; 
                temperatureElement.textContent = `${temperature.toFixed(1)}°C`;
            })
            .catch(error => {
                console.error('Erro ao buscar a temperatura:', error);
            });
    });





</script>

</head>

<body>

<div class="navbar" id="navbar">
   <ul>
   <li class="navbar-logo" href="#">
   <img src="{{ asset('images/bomb.jpg') }}" alt="Logo">
    </li>

    <li class="navbar-logo-text">Bombeiros Cabeceirenses</li>
      
      @auth
         @if(auth()->user()->id == 1)
             <li><a href="{{ route('disponibilidade.all') }}">Definir Escalas</a></li>
         @endif


        <div class="navbar-bottom">
            <span class="navbar-username">{{ Auth::user()->name }}</span>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="btn btn-logout">Logout</button>
            </form>
        </div>
         
     @endauth
   </ul>
</div>

<div class="navbarright">
    <img id="weatherIcon" src="" alt="Weather Icon" class="weather-icon">
    <p id="temperature" class="temperature-text">
        Temperatura: Aguarde...
    </p>
</div>







<div class="calendardiv">
    <div id="calendar" class="calendar"></div>
</div>


<div class="modal" id="modal">
    <div class="modal-content">
        <p>Selecione a disponibilidade para o dia <span id="selected-date"></span></p>
        <form id="availability-form" method="POST" action="{{ route('disponibilidade.store') }}">
            @csrf
            <input type="hidden" name="date" id="availability-date">
            <label for="disponibilidade_noite">Disponibilidade noite:</label>
            <input type="checkbox" id="disponibilidade_noite" name="disponibilidade_noite">
            <label for="disponibilidade_dia">Disponibilidade dia:</label>
            <input type="checkbox" id="disponibilidade_dia" name="disponibilidade_dia">
            
            <button type="submit">Confirmar</button>
            <button type="button" onclick="cancelModal()">Cancelar</button>
        </form>
    </div>
</div>





</body>
</html>
