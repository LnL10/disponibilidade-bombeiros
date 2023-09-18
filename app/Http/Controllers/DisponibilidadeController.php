<?php

namespace App\Http\Controllers;
use App\Models\Disponibilidade;
use App\Models\User;
use Carbon\Carbon;

use Illuminate\Http\Request;

class DisponibilidadeController extends Controller
{
    public function edit()
    {
        $user = auth()->user();
        $disponibilidade = $user->disponibilidade;
        
        if (!$disponibilidade) {
            
            $disponibilidade = new Disponibilidade();
            $disponibilidade->user_id = $user->id;
            $disponibilidade->save();
        }

        return view('disponibilidade.editar', compact('disponibilidade'));
    }

    public function update(Request $request, $id){

        $user = auth()->user();

        $dataFormatoCorreto = Carbon::createFromFormat('d-m-Y', $request->input('DiaX'))->format('Y-m-d');
        $disponibilidade = Disponibilidade::updateOrCreate(
            ['user_id' => $user->id, 'DiaX' => $dataFormatoCorreto],
            ['DisponibilidadeDeDia' => $request->input('DisponibilidadeDeDia'), 'DisponibilidadeDeNoite' => $request->input('DisponibilidadeDeNoite')]
        );
        return redirect()->route('disponibilidade.editar')->with('success', 'Disponibilidade atualizada com sucesso!');
    }


    public function main()
    {
        $user = auth()->user();
        if (!$user) {
            return redirect()->route('login');
        }
        //if ($user && $user->id === 1) {
          //  return redirect()->route('disponibilidade.all');
        //}
        $disponibilidades = $user->disponibilidades;
        return view('disponibilidade.main', compact('disponibilidades', 'user'));
    }

    public function store(Request $request){
        $data = $request->all();
        $user = auth()->user();
        
        $disponibilidade = Disponibilidade::updateOrCreate(
            
            ['user_id' => $user->id, 'DiaX' => $data['date']],
            [
                'DisponibilidadeDeDia' => isset($data['disponibilidade_dia']),
                'DisponibilidadeDeNoite' => isset($data['disponibilidade_noite']),
            ]
        );

        return back();
    }

    public function deleteNullDiaX(){

        Disponibilidade::whereNull('DiaX')->delete();
        
        return redirect()->route('disponibilidade.main')->with('success', 'Registros com DiaX nulo excluídos com sucesso.');
    }

    public function all(Request $request){

        $disponibilidades = Disponibilidade::all();
        $users = User::all();
        $dataSelecionada = $request->filled('selectedDate') ? $request->input('selectedDate') : date('Y-m-d');

        $disponibilidadeDia = Disponibilidade::where('DiaX', '=', $dataSelecionada)->where('DisponibilidadeDeDia', '=', 1)->get();
        $disponibilidadeNoite = Disponibilidade::where('DiaX', '=', $dataSelecionada)->where('DisponibilidadeDeNoite', '=', 1)->get();

        return view('disponibilidade.all', compact(['disponibilidades', 'users', 'disponibilidadeDia', 'disponibilidadeNoite','dataSelecionada']));
    }




}
