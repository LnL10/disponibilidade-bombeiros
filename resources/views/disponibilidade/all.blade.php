<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<style>
body {
            font-family: Arial, sans-serif;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: grey; 
        }
        td{
          width:100px;
        }

        .user-dropdown {
            width: 100%;
            padding: 6px;
            box-sizing: border-box;
        }

        

.main{
    display: flex;
   flex-direction: row;
   margin-left: 20px;  
   
}

.table-container {
    margin: 10px; 
}
</style>

<body>

<a href="{{ route('disponibilidade.main') }}" class="btn btn-primary">Dar Disponibilidade</a>


<h2>Selecionar Equipas para o dia {{ $dataSelecionada}}</h2>

    <div>
        <label for="selectedDate">Selecione a Data:</label>
        <input type="date" id="selectedDate" name="selectedDate" value="{{ $dataSelecionada }}">
    </div>



<div class="main">
  <div class="table-container">
    <h1>Noite</h1>
    @for ($tableIndex = 1; $tableIndex <= 3; $tableIndex++)
        
        <table>
            <thead>
                <tr>
                    <th>Ecin {{ $tableIndex }}</th>
                    <th>Nº</th>
                    <th>Nº MEC.</th>
                    <th>CATEGORIA</th>
                    <th>NOME</th>
                </tr>
            </thead>
            <tbody>
                @for ($rowIndex = 1; $rowIndex <= 5; $rowIndex++)
                    <tr>
                        <td>
                            <select class="user-dropdown" data-table="{{ $tableIndex }}" data-row="{{ $rowIndex }}">
                                
                                @foreach ($users->sortBy(function ($user) use ($disponibilidadeNoite) { 
                                    return $disponibilidadeNoite->contains('user_id', $user->id) ? 0 : 1;
                                }) as $user)
                                    <option value="{{ $user->id }}" style="background-color: {{ $disponibilidadeNoite->contains('user_id', $user->id) ? 'green' : 'red' }}">
                                        {{ $user->name }}
                                    </option>
                                @endforeach
                            </select>
                        </td>
                        <td class="user-numero"></td>
                        <td class="user-numero-mecanografico"></td>
                        <td class="user-categoria"></td>
                        <td class="user-name"></td>
                    </tr>
                @endfor
            </tbody>
        </table>
    @endfor
  </div>

    <div class="table-container">
     <h1>Dia</h1>
     @for ($tableIndex = 4; $tableIndex <= 6; $tableIndex++)
        <table>
            <thead>
                <tr>
                    <th>ECIN {{$tableIndex}}</th>
                    <th>Nº</th>
                    <th>Nº MEC.</th>
                    <th>CATEGORIA</th>
                    <th>NOME</th>
                </tr>
            </thead>
            <tbody>
                @for ($rowIndex = 1; $rowIndex <= 5; $rowIndex++)
                    <tr>
                        <td>
                            <select class="user-dropdown" data-table="{{ $tableIndex }}" data-row="{{ $rowIndex }}">
                                
                                @foreach ($users->sortBy(function ($user) use ($disponibilidadeDia) { 
                                    return $disponibilidadeDia->contains('user_id', $user->id) ? 0 : 1;
                                }) as $user)
                                    <option value="{{ $user->id }}" style="background-color: {{ $disponibilidadeDia->contains('user_id', $user->id) ? 'green' : 'red' }}">
                                        {{ $user->name }}
                                    </option>
                                @endforeach
                            </select>
                        </td>
                        <td class="user-numero"></td>
                        <td class="user-numero-mecanografico"></td>
                        <td class="user-categoria"></td>
                        <td class="user-name"></td>
                    </tr>
                @endfor
            </tbody>
        </table>
        @endfor
    </div>
    
    <div>
        <button id="meuBotao" class="btn btn-primary">Enviar Dados para o Controlador</button>
    </div>

</div>

<script>
    var botao = document.getElementById("meuBotao");
    var users = @json($users);
    var dropdowns = document.querySelectorAll('.user-dropdown');

    document.addEventListener('DOMContentLoaded', function() {

        dropdowns.forEach(function(dropdown) {
            dropdown.addEventListener('change', function() {
                var selectedUserId = this.value;
                var row = this.closest('tr');
                var tableIndex = this.getAttribute('data-table');
                var rowIndex = this.getAttribute('data-row');

                if (selectedUserId) {
                    var selectedUser = users.find(function(user) {
                        return user.id == selectedUserId;
                    });
                    row.querySelector('.user-name').textContent = selectedUser.name;
                    row.querySelector('.user-numero').textContent = selectedUser.numero_bombeiro;
                    row.querySelector('.user-numero-mecanografico').textContent = selectedUser.n_mecanografico;
                    row.querySelector('.user-categoria').textContent = selectedUser.categoria;
                } else {
                    row.querySelector('.user-name').textContent = '';
                    row.querySelector('.user-numero').textContent = '';
                    row.querySelector('.user-numero-mecanografico').textContent = '';
                    row.querySelector('.user-categoria').textContent = '';
                }
            });
        });
        window.addEventListener('load', function() {
            dropdowns.forEach(function(dropdown) {
                dropdown.value = ''; 
                var row = dropdown.closest('tr');
                row.querySelector('.user-name').textContent = '';
                row.querySelector('.user-numero').textContent = '';
                row.querySelector('.user-numero-mecanografico').textContent = '';
                row.querySelector('.user-categoria').textContent = '';
            });
        });
    });

    const dropdownToggles = document.querySelectorAll('.dropdown-toggle');

    dropdownToggles.forEach(toggle => {
        toggle.addEventListener('click', function(event) {
        
        dropdownToggles.forEach(otherToggle => {
            if (otherToggle !== toggle) {
            otherToggle.nextElementSibling.classList.remove('show');
            }
        });

        const dropdownMenu = toggle.nextElementSibling;
        dropdownMenu.classList.toggle('show');
        event.stopPropagation();
        });
    });

    window.addEventListener('click', function() {
        dropdownItems.forEach(item => {
        item.closest('.dropdown-menu').classList.remove('show');
        });
    });

    const selectedDateInput = document.getElementById('selectedDate');
    
    selectedDateInput.addEventListener('change', function() {
        const selectedDate = selectedDateInput.value;
        window.location.href = "{{ route('disponibilidade.all') }}?selectedDate=" + selectedDate;
    });


    botao.addEventListener("click", function() {
        const noiteData = []; 
        const diaData = []; 

        //NOITE
        for (let tableIndex = 1; tableIndex <= 3; tableIndex++) {
            const tableData = {
                tableIndex: tableIndex,
                users: []
            };

            
            const tableDropdowns = document.querySelectorAll(`.user-dropdown[data-table="${tableIndex}"]`);
            tableDropdowns.forEach(function(dropdown) {
                const selectedUserId = dropdown.value;
                if (selectedUserId) {
                    tableData.users.push({
                        user_id: selectedUserId
                    });
                }
            });

            noiteData.push(tableData);
        }

        //DIA
        for (let tableIndex = 4; tableIndex <= 6; tableIndex++) {
            const tableData = {
                tableIndex: tableIndex,
                users: []
            };

            
            const tableDropdowns = document.querySelectorAll(`.user-dropdown[data-table="${tableIndex}"]`);
            tableDropdowns.forEach(function(dropdown) {
                const selectedUserId = dropdown.value;
                if (selectedUserId) {
                    tableData.users.push({
                        user_id: selectedUserId
                    });
                }
            });

            diaData.push(tableData);
        }
        
        console.log(noiteData);
        console.log(diaData);
        const noiteJsonData = JSON.stringify(noiteData);
        const diaJsonData = JSON.stringify(diaData);
        const url = "{{ route('export.to.pdf') }}?noiteData=" + encodeURIComponent(noiteJsonData) + "&diaData=" + encodeURIComponent(diaJsonData);
        window.location.href = url;
    });


</script>

</body>
</html>
