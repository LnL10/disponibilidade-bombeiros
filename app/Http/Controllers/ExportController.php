<?php

namespace App\Http\Controllers;
use PDF;

use Illuminate\Http\Request;

class ExportController extends Controller
{
    public function exportToPdf(Request $request)
    {
        $noiteData = json_decode(urldecode($request->input('noiteData')), true);
        $diaData = json_decode(urldecode($request->input('diaData')), true);
        $pdf = PDF::loadView('pdf.template', compact('noiteData', 'diaData'));

        return $pdf->download('schedule.pdf');
    }
}
