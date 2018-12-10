//https://s3.amazonaws.com/dolartoday/data.json
$.getJSON("https://s3.amazonaws.com/dolartoday/data.json",function(data){
  $('#dolart').html('Dolar Today '+data.USD.transferencia);
  $('#al').html('DolarToday: '+data._timestamp.fecha_corta);
  $('#bitcoinref').html(' Dolar BTC: '+data.USD.bitcoin_ref);
  $('#localbitref').html(' LocalBtc: '+data.USD.localbitcoin_ref);
  $('#petro').html(' PETRO : '+data.MISC.petroleo);
    });