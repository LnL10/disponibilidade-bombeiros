<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::table('users', function (Blueprint $table) {
        $table->string('numero_bombeiro')->nullable();
        $table->string('n_mecanografico')->unique();
        $table->string('categoria')->nullable();
    });
}

public function down()
{
    Schema::table('users', function (Blueprint $table) {
        $table->dropColumn(['numero_bombeiro', 'n_mecanografico', 'categoria']);
    });
}

};
