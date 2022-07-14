<aside class="main-sidebar sidebar-light-primary elevation-2">
    <div class="elevation-1 mt-1 p-2">
        <img class="image" style="width: 100%; height:100px" src="{{ asset('dist/img/BerkatSoft.png') }}">
    </div>

    <div class="sidebar mt-3">
        <div class="user-panel d-flex pb-3">
            <div class="image">
                <img src="{{ Auth::User()->userfile == null ? asset('dist/img/avatar.png') : asset('dist/img/' . Auth::User()->userfile) }}"
                    class="img-circle elevation-2" style="height:30px">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ Auth::user()->name }}</a></a>
            </div>
        </div>

        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                <li class="nav-item">
                    <a href="{{ route('home') }}" class="nav-link {{ request()->is('home') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Home</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('produk') }}" class="nav-link {{ request()->is('produk') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Data Produk</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('costumer') }}"
                        class="nav-link {{ request()->is('costumer') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Data Costumer</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('order') }}" class="nav-link {{ request()->is('order') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Sales Order</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</aside>
