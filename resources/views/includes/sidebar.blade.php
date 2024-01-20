<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="{{ route("dashboard") }}"><i class
                        ="menu-icon fa fa-laptop"></i>Dashboard </a>
                </li>
                <li class="menu-title">Karyawan</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{ route('employee.index') }}"> <i class="menu-icon fa fa-list"></i>Lihat Karyawan</a>
                </li>
                <li class="">
                    <a href="{{ route('employee.create') }}"> <i class="menu-icon fa fa-plus"></i>Tambah Karyawan</a>
                </li>

                <li class="menu-title">Departemen</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{ route('department.index') }}"> <i class="menu-icon fa fa-list"></i>Lihat Departemen</a>
                </li>
                <li class="">
                    <a href="{{ route('department.create') }}"> <i class="menu-icon fa fa-plus"></i>Tambah Departemen</a>
                </li>

                <li class="menu-title">Posisi</li><!-- /.menu-title -->
                <li class="">
                    <a href="{{ route('position.index') }}"> <i class="menu-icon fa fa-list"></i>Lihat Posisi</a>
                </li>
                <li class="">
                    <a href="{{ route('position.create') }}"> <i class="menu-icon fa fa-plus"></i>Tambah Posisi</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>