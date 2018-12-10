	<!-- main -->
	<section id="main" class="clearfix home-default">
		<div class="container">
			<script src="https://widgets.coingecko.com/coingecko-coin-price-marquee-widget.js"></script>
			<!-- main-content -->
			<div class="main-content">
				<!-- row -->
				<div class="row">
					<!-- product-list -->
					<div class="col-md-9">
						<!-- categorys -->
              <div class="col-md-12"> 
              	</br>           
                    <center> <h4>      	<?php 
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
			echo ("Estatus actual de Cajeros : <b>Online</b>. <a href='#'></a>");
		} else {
			echo ("Estatus actual de Cajeros : <b>Desconectados</b>. <a href='#'></a>");
		}
		?></h4></center>
	</div>
                           
						<div class="section">
							<div class="row" id="bit_exchange_box">
					<div id="bit_exchange_results"></div>
								<form id="bit_exchange_form">
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-3 hidden-xs hidden-sm">
											<div style="margin-top:50px;">
												<img src="assets/icons/nosnollar.png" id="bit_image_send" width="72px" height="72px" class="img-circle img-bordered">
											</div>
										</div>
										<div class="col-md-9">
											<h3><i class="fa fa-arrow-down"></i> <?php echo $lang['send']; ?></h3>
											<div class="form-group">
												<select class="form-control form_style_1 input-lg" id="bit_gateway_send" name="bit_gateway_send" onchange="bit_refresh('1');">
													<?php
													$gateways = $db->query("SELECT * FROM bit_gateways WHERE allow_send='1' and status='1' ORDER BY id");
													if($gateways->num_rows>0) {
														while($g = $gateways->fetch_assoc()) {
															if($g['default_send'] == "1") { $sel = 'selected'; } else { $sel = ''; }
															echo '<option value="'.$g[id].'" '.$sel.'>'.$g[name].' '.$g[currency].'</option>';
														}
													} else {
														echo '<option>'.$lang[no_have_gateways].'</option>';
													}
													?>
												</select>
											</div>
											<div class="form-group">
												<input type="text" class="form-control form_style_1 input-lg" id="bit_amount_send" name="bit_amount_send" value="0" onkeyup="bit_calculator();" onkeydown="bit_calculator();">
											</div>
											<div class="text text-muted pull-right" style="padding-bottom:10px;font-weight:bold;"><?php echo $lang['exchange_rate']; ?>: <span id="bit_exchange_rate">-</span></div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row">
										<div class="col-md-9">
											<h3><i class="fa fa-arrow-up"></i> <?php echo $lang['receive']; ?></h3>
											<div class="form-group">
												<select class="form-control form_style_1 input-lg" id="bit_gateway_receive" name="bit_gateway_receive"  onchange="bit_refresh('2');">
													<?php
											$gateways = $db->query("SELECT * FROM bit_gateways WHERE allow_receive='1' and status='1' ORDER BY id");
											if($gateways->num_rows>0) {
												while($g = $gateways->fetch_assoc()) {
													if($g['default_receive'] == "1") { $sel = 'selected'; } else { $sel = ''; }
													echo '<option value="'.$g[id].'" '.$sel.'>'.$g[name].' '.$g[currency].'</option>';
												}
											} else {
												echo '<option>'.$lang[no_have_gateways].'</option>';
											}
											?>
												</select>
											</div>
											<div class="form-group">
												<input type="text" class="form-control form_style_1 input-lg" id="bit_amount_receive" name="bit_amount_receive" disabled value="0">
											</div>
											<div class="text text-muted" style="padding-bottom:10px;font-weight:bold;"><?php echo $lang['reserve']; ?>: <span id="bit_reserve">-</span></div>
										</div>
										<div class="col-md-3 hidden-xs hidden-sm">
											<div style="margin-top:50px;">
												<img src="assets/icons/venezuela.png" id="bit_image_receive" width="72px" height="72px" class="img-circle img-bordered">
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<input type="hidden" name="bit_amount_receive" id="bit_amount_receive2">
									<input type="hidden" name="bit_rate_from" id="bit_rate_from">
									<input type="hidden" name="bit_rate_to" id="bit_rate_to">
									<input type="hidden" name="bit_currency_from" id="bit_currency_from">
									<input type="hidden" name="bit_currency_to" id="bit_currency_to">
									<input type="hidden" id="bit_login_to_exchange" name="bit_login_to_exchange" value="<?php echo $settings['login_to_exchange']; ?>">
									<input type="hidden" id="bit_ses_uid" name="bit_ses_uid" value="<?php if(checkSession()) { echo $_SESSION['bit_uid']; } else { echo '0'; } ?>">
                                                                         <center><h4><b><div id="dolart"></div></b></h4></center>
									<center>
										<button type="button" class="btn btn-primary btn-lg"  onclick="bit_exchange_step_1();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-refresh"></i> <?php echo $lang['btn_exchange']; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
									</center>
                                                     
								</div>
							</form>	</br>
                                                                 	<div class="col-md-12">
                                                                  </br>
                                                                   <center><a href="<?php echo $settings['url']; ?>#" class="btn btn-primary btn-sm"><?php echo $lang['track_exchange']; ?></a> </center>
                                                                   </br>
                                                                 <div class="row" id="bit_exchange_box">
                                                                 </div>
							</div>
							<br/>
							<form action="<?php echo $settings['url']; ?>track" method="POST">
								<div class="form-group">
									<input type="text" text-align= "center" class="form-control" name="order_id" placeholder="<?php echo $lang['type_here_exchange_id']; ?>">
								</div>
								<button type="submit" class="btn btn-primary btn-block" name="bit_track"><?php echo $lang['btn_track']; ?></button>
							</form>
              		
							</div>
						</div><!-- category-ad -->	
						
						<!-- trending-ads -->
                    
						<div class="section trending-ads">
							<div class="section-title tab-manu">
								<h4><?php echo $lang['latest_exchanges']; ?></h4>
							
              </div>
							<br/>
							<div class="row">
								<div class="col-md-12">
                                                          <center><h4><?php echo $lang['latest_exchanges_2']; ?></h4></center>
                                                          <br/>
									<table class="table">
										<thead>
											<tr>
												<th><?php echo $lang['send']; ?></th>
												<th><?php echo $lang['receive']; ?></th>
												<th><?php echo $lang['amount']; ?></th>
												<th><?php echo $lang['exchange_id']; ?></th>
												<th><?php echo $lang['status']; ?></th>
											</tr>
										</thead>
                                                               
										<tbody>
											<?php
											$query = $db->query("SELECT * FROM bit_exchanges ORDER BY id DESC LIMIT 10"); 
											if($query->num_rows>0) {
												while($row = $query->fetch_assoc()) {
													?>
													<tr>
														<td><img src="<?php echo gatewayicon(gatewayinfo($row['gateway_send'],"name")); ?>" width="20px" height="20"> <?php echo gatewayinfo($row['gateway_send'],"name"); ?> <?php echo gatewayinfo($row['gateway_send'],"currency"); ?></td>
														<td><img src="<?php echo gatewayicon(gatewayinfo($row['gateway_receive'],"name")); ?>" width="20px" height="20"> <?php echo gatewayinfo($row['gateway_receive'],"name"); ?> <?php echo gatewayinfo($row['gateway_receive'],"currency"); ?></td>
														<td><?php echo $row['amount_send']; ?> <?php echo gatewayinfo($row['gateway_send'],"currency"); ?></td>
														<td><?php echo cropexchangeid($row['exchange_id'],10); ?></td>
														<td><?php
										if($row['status'] == "1") {
											echo '<span class="label label-warning"><i class="fa fa-clock-o"></i> '.$lang[status_1].'</span>';
										} elseif($row['status'] == "2") {
											echo '<span class="label label-warning"><i class="fa fa-clock-o"></i> '.$lang[status_2].'</span>';
										} elseif($row['status'] == "3") {
											echo '<span class="label label-info"><i class="fa fa-clock-o"></i> '.$lang[status_3].'</span>';
										} elseif($row['status'] == "4") {
											echo '<span class="label label-success"><i class="fa fa-check"></i> '.$lang[status_4].'</span>';
										} elseif($row['status'] == "5") {
											echo '<span class="label label-danger"><i class="fa fa-times"></i> '.$lang[status_5].'</span>';
										} elseif($row['status'] == "6") {
											echo '<span class="label label-danger"><i class="fa fa-times"></i> '.$lang[status_6].'</span>';
										} elseif($row['status'] == "7") {
											echo '<span class="label label-danger"><i class="fa fa-times"></i> '.$lang[status_7].'</span>';
										} else {
											echo '<span class="label label-default">'.$lang[status_unknown].'</span>';
										}
										?></td>
													</tr>
													<?php
												}
											} else {
												echo '<tr><td colspan="5">'.$lang[still_no_exchanges].'</td></tr>';
											}
											?>
										</tbody>
									</table>
								</div>
							</div>
						</div><!--trending-ads -->		

						
					</div><!-- product-list -->

					<!-- advertisement -->
					<div class="col-md-3">
						<div class="section">
							<div class="section-title tab-manu">
                                         
						<center><b><div id="al"></div></b></br>
                                              
<center><div id="bitcoinref" class="btn btn-primary btn-sm"></div></center></br>
 <center> <div id="localbitref" class="btn btn-primary btn-sm"></center></div></br>
</center>
							
						</div>
						
						<div class="section">
							<div class="section-title tab-manu">
							<a href="<?php echo $settings['url']; ?>#" class="btn btn-primary btn-sm"><?php echo $lang['our_reserve']; ?></a> 
                                  	
							</div>
							<br/>
								<div class="row">
								<?php
								$query2 = $db->query("SELECT * FROM bit_gateways ORDER BY id");
								if($query2->num_rows>0) {
									while($row = $query2->fetch_assoc()) {
									?>
									<div class="col-md-12" style="margin-bottom:10px;">
										<img src="<?php echo gatewayicon($row['name']); ?>" width="42px" height="42px" class="img-circle img-bordered pull-left">
										<span class="pull-left" style="margin-left:5px;">
											<span style="font-size:15px;font-weight:bold;"><?php echo $row['name']." ".$row['currency']; ?></span><br/>
											<span class="text text-muted"><?php echo $row['reserve']." ".$row['currency']; ?> </span>
										</span>
									</div>
									<br><br>
									<?php
									}
								} else {
									?>
									<div class="col-md-12">
										<?php echo $lang['no_have_gateways']; ?>
									</div>
									<?php
								}
								?>
								
								</div>

						</div>
					</div><!-- advertisement -->
				</div><!-- row -->
			</div><!-- main-content -->
		</div><!-- container -->
	</section><!-- main -->
