<ol class="breadcrumb">
	<li><a href="./">LocalNOS Venezuela - Operador P2P</a></li>
	<li class="active">Panel P2P</li>
</ol>

<div class="row">
	<div class="col-lg-12">

		<?php 
		$b = protect($_GET['b']);
		$c = protect($_GET['c']);
		if($b == "operator") {
			if($c == "turn_offline") {
				$update = $db->query("UPDATE bit_settings SET operator_status='0'");
				header("Location: ./");
			} 
			if($c == "turn_online") {
				$update = $db->query("UPDATE bit_settings SET operator_status='1'");
				header("Location: ./");
			}
		}
		if($settings['operator_status'] == "1") {
			echo info("Estado actual de operadores P2P: <b> En Linea </b>. <a href='./?a=dashboard&b=operator&c=turn_offline'>Click here</a> to change status to offline.");
		} else {
			echo info("Estado actual de operadores P2P : <b> Desconectados </b>. <a href='./?a=dashboard&b=operator&c=turn_online'>Click Aqui </a> para modificar el modo de conexion.");
		}
		?>
	</div>
	
	</div>
 <center><div class="user-profile">
					<center>	<div class="user">
							<h2>Es un placer verte en linea, <a href="<?php echo $settings['url']; ?>account/exchanges"><?php echo idinfo($_SESSION['bit_uid'],"username"); ?></a></h2>
							
						</div>
							
					</div><!-- user-profile --></center>	
	<div class="col-lg-12">
		<div class="panel panel-primary">
			<div class="panel-heading">Intercambios Pendientes</div>
			<div class="panel-body">
				<table class="table">
		      <thead>
		        <tr>
					<th width="5%">ID</th>
					<th width="10%">From</th>
					<th width="10%">To</th>
					<th width="20%">Amount send (receive)</th>
					<th width="20%">Exchange ID</th>
					<th width="10%">Status</th>
					<th width="10%">Process type</th>
					<th width="10%">Action</th>
				</tr>
		      </thead>
		      <tbody>
		      <?php
			  $t=1;
			  $query = $db->query("SELECT * FROM bit_exchanges WHERE status='3' ORDER BY id");
			  if($query->num_rows>0) {
			    while($row = $query->fetch_assoc()) {
				?>
				<tr>
							<td><?php echo $row['id']; ?></td>
							<td><?php if($row['wid']>0) { echo 'Wallet '.walletinfo($row['wid'],"currency"); } else { ?><?php echo gatewayinfo($row['gateway_send'],"name"); ?> <?php echo gatewayinfo($row['gateway_send'],"currency"); ?><?php } ?></td>
							<td><?php echo gatewayinfo($row['gateway_receive'],"name"); ?> <?php echo gatewayinfo($row['gateway_receive'],"currency"); ?></td>
							<td><?php echo $row['amount_send']; ?> <?php echo gatewayinfo($row['gateway_send'],"currency"); ?> (<?php echo $row['amount_receive']; ?> <?php echo gatewayinfo($row['gateway_receive'],"currency"); ?>)</td>
							<td><span class="label label-default"><?php echo $row['exchange_id']; ?></span></td>
							<td>
								<?php
										if($row['status'] == "1") {
											echo '<span class="label label-warning"><i class="fa fa-clock-o"></i> Awaiting Confirmation</span>';
										} elseif($row['status'] == "2") {
											echo '<span class="label label-warning"><i class="fa fa-clock-o"></i> Awaiting Payment</span>';
										} elseif($row['status'] == "3") {
											echo '<span class="label label-info"><i class="fa fa-clock-o"></i> Processing</span>';
										} elseif($row['status'] == "4") {
											echo '<span class="label label-success"><i class="fa fa-check"></i> Processed</span>';
										} elseif($row['status'] == "5") {
											echo '<span class="label label-danger"><i class="fa fa-times"></i> Timeout</span>';
										} elseif($row['status'] == "6") {
											echo '<span class="label label-danger"><i class="fa fa-times"></i> Denied</span>';
										} elseif($row['status'] == "7") {
											echo '<span class="label label-danger"><i class="fa fa-times"></i> Canceled</span>';
										} else {
											echo '<span class="label label-default">Unknown</span>';
										}
										?>
							</td>
							<td>
										<?php
										$process_type = gatewayinfo($row['gateway_send'],"exchange_type");
										if($process_type == "1") {
											echo '<span class="label label-info">Automatically</span>';
										} elseif($process_type == "2") {
											echo '<span class="label label-info">Semi-automatic</span>';
										} elseif($process_type == "3") {	
											echo '<span class="label label-info">Manually</span>';
										} else {
											echo '<span class="label label-default">Manually</span>';
										}
										?>
							</td>
							<td>
								<a href="./?a=exchanges&b=explore&id=<?php echo $row['id']; ?>" title="Explore"><i class="fa fa-search"></i> Explore</a>
							</td>
						</tr>
				<?php 
				$t++;
				}
			  } else {
				echo '<tr><td colspan="8">No have requests for exchanges.</td></tr>';
			  }
			  ?>
		      </tbody>
		    </table>
			</div>	
		</div>
		<?php
		$query = $db->query("SELECT * FROM bit_users WHERE document_1 != '' and document_verified='0' ORDER BY id");
		if($query->num_rows>0) {
		?>
		<br>
		<div class="panel panel-primary">
			<div class="panel-heading">Pending documents for approval</div>
			<div class="panel-body">
				<table class="table">
		      <thead>
		        <tr>
					<th width="5%">ID</th>
					<th width="15%">Username</th>
					<th width="15%">Email address</th>
					<th width="15%">Document 1</th>
					<th width="15%">Document 2</th>
					<th width="15%">Registered on</th>
					<th width="10%">Action</th>
				</tr>
		      </thead>
		      <tbody>
		      <?php
			    while($row = $query->fetch_assoc()) {
				?>
						<tr>
							<td><?php echo $row['id']; ?></td>
							<td><?php echo $row['username']; ?></td>
							<td><?php echo $row['email']; ?></td>
							<td><a href="<?php echo $settings['url'].$row['document_1']; ?>" target="_blank"><?php echo basename($row['document_1']); ?></a></td>
							<td><a href="<?php echo $settings['url'].$row['document_2']; ?>" target="_blank"><?php echo basename($row['document_2']); ?></a></td>
							<td><span class="label label-primary"><?php echo date("d/m/Y H:i:s",$row['signup_time']); ?></span></td>
							<td>
								<a href="./?a=users&b=edit&id=<?php echo $row['id']; ?>" title="Approve"><i class="fa fa-check"></i></a>
							</td>
						</tr>
				<?php 
				$i++;
				}
			  ?>
		      </tbody>
		    </table>
			
			</div>	
		</div>
		<?php
		}
		?>
		      </tbody>
		    </table>
			
			</div>	
		</div>
		
	</div>
</div>