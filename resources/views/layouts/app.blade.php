<!DOCTYPE html>
<html lang="en" data-bs-theme="light">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="author" content="" />

        <title>MR-SABUJ - {{ $seo->title }}</title>

        <meta name="description" content="{{ $seo->description }}" />
        <meta name="keywords" content="{{ $seo->keywords }}" />

        <meta name="og.site_name" content="{{ $seo->ogSiteName }}" />
        <meta name="og.url" content="{{ $seo->ogUrl }}" />
        <meta name="og.title" content="{{ $seo->ogTitle }}" />
        <meta name="og.image" content="{{ $seo->ogImg }}" />
        <meta name="og.description" content="{{ $seo->ogDescription	 }}" />

        <link rel="icon" type="image/x-icon" href="{{asset('assets/images/favicon.ico')}}" />
        <link href="{{asset('https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/css/bootstrap.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/css/style.css')}}" rel="stylesheet" />
        <script src="{{ asset('assets/js/axios.min.js') }}"></script>
        <script src="{{ asset('https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js') }}"></script>
    </head>

    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">

            @include('layouts.navbar')
            @include('layouts.loader')
           
            <div id="main-content">
                @yield('content')
            </div>
            
           
            @include('layouts.footer')
          

        </main>

        <script src="{{asset('https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js')}}"></script>
    </body>
</html>
