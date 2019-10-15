<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo base_url('asset/dist/img/user2-160x160.jpg');?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?= $this->session->userdata['username']; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li><?php echo anchor('home','<i class="fa fa-dashboard"></i> Home</a>'); ?></li>
        <li><?php echo anchor('pemetaan','<i class="fa fa-filter"></i> Filter</a>'); ?></li>
        <!-- <li><?php echo anchor('sugesti','<i class="fa fa-dashboard"></i> Sugesti</a>'); ?></li> -->
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-th"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><?php echo anchor('agen','<i class="fa fa-circle-o"></i> Agen</a>'); ?></li>
            <li><?php echo anchor('loper','<i class="fa fa-circle-o"></i> Loper</a>'); ?></li>
            <li><?php echo anchor('customer','<i class="fa fa-circle-o"></i> Pelanggan</a>'); ?></li>
            <li><?php echo anchor('Daerah','<i class="fa fa-circle-o"></i> Daerah</a>'); ?></li>
          </ul>
        </li>
        <li class="header"></li>
        <li><?php echo anchor('login/logout','<i class="fa fa-circle-o text-red"></i> Log Out</a>'); ?></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>