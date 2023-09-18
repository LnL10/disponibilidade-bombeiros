<!DOCTYPE html>
<html>
<head>
    <style>
        /* Your PDF styling goes here */
    </style>
</head>
<body>
    <h1>Schedule Export</h1>

    <h2>Noite Data</h2>
    @foreach ($noiteData as $tableData)
        <h3>Table {{ $tableData['tableIndex'] }}</h3>
        <ul>
            @foreach ($tableData['users'] as $user)
                <li>User ID: {{ $user['user_id'] }}</li>
            @endforeach
        </ul>
    @endforeach

    <h2>Dia Data</h2>
    @foreach ($diaData as $tableData)
        <h3>Table {{ $tableData['tableIndex'] }}</h3>
        <ul>
            @foreach ($tableData['users'] as $user)
                <li>User ID: {{ $user['user_id'] }}</li>
            @endforeach
        </ul>
    @endforeach
</body>
</html>
