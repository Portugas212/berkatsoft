@extends('layout/body')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-outline card-primary">
                <div class="card-body">
                    <h3 class="display-6 text-center"></h3>
                    <div class="row">
                        <div class="col-md-12 offset-md-1">
                            <b>Hallo {{ Auth::user()->name }} !</b>
                            <br>

                            {{-- @php
                                function containLetters(string $kata, string $sumberKata)
                                {
                                    $perKata = str_split($kata);
                                    $jumlah_huruf = count(array_unique($perKata));
                                    $i = 0;
                                    foreach (array_unique($perKata) as $r) {
                                        if (stripos($sumberKata, $r) !== false) {
                                            $i++;
                                        }
                                    }
                                    return $i == $jumlah_huruf ? true : false;
                                }
                            @endphp

                            {{ containLetters('brs', 'berkatcos') }} --}}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
