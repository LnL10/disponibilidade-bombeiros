<!DOCTYPE html>
<html>
<head>
    <title>Editar Disponibilidade</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">

</head>
<body>
    <h1>Editar Disponibilidade</h1>

    <form action="{{ route('disponibilidade.update', ['id' => $disponibilidade->id]) }}" method="POST">
        @csrf
        @method('PUT')

        <label for="DiaX">Dia X:</label>
        <input type="text" name="DiaX" id="DiaX" class="form-control datepicker" value="{{ $disponibilidade->DiaX }}" required>
        <br>

        
   

        <label for="DisponibilidadeDeDia">Disponibilidade de Dia:</label>
        <input type="text" name="DisponibilidadeDeDia" value="{{ $disponibilidade->DisponibilidadeDeDia }}" required>
        <br>

        <label for="DisponibilidadeDeNoite">Disponibilidade de Noite:</label>
        <input type="text" name="DisponibilidadeDeNoite" value="{{ $disponibilidade->DisponibilidadeDeNoite }}" required>
        <br>

        <button type="submit">Salvar</button>
        
    </form>
    
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">
        $(function() {
           $('#datetimepicker').datetimepicker({format: 'yyyy-mm-dd',});
        });
    </script> 
</html>



