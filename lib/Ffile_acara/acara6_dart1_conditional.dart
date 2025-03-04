void main(){
  var isThisWahyu = true;

  if(isThisWahyu){
  print("wahyu");
  }else{
  print("bukan");
  }

  //dengan tenary operator
  var isThisWahyu2 = true;
  isThisWahyu2 ? print("wahyu") : print("bukan");

  //konditional
  if ( true) {
    print("jalankan code");
  }

  //konditional 2
  if ( false ) {
    print("Program tidak jalan code");
  }

  //conditional 3
  var mood = "happy";
  if ( mood == "happy" ) {
    print("hari ini aku bahagia!");
  }

  //brancing sederhana
  var minimarketStatus = "open";
  if (minimarketStatus == "open") {
    print("saya akan membeli telur dan buah");
  } else {
    print("minimarketnya tutup");
  }

  //brancing dengan kondisi
  var minimarketStatus2 = "close";
  var minuteRemainingToOpen = 5;
  if (minimarketStatus2 == "open") {
    print("saya akan membeli telur dan buah");
  } else if (minuteRemainingToOpen <= 5) {
    print("minimarket buka sebentar lagi, saya tungguin");
  } else {
    print("minimarket tutup, saya pulang lagi");
  }

  //kondisi bersarang
  var minimarketStatus3 = "open";
  var telur = "soldout";
  var buah = "soldout";
  if (minimarketStatus3 == "open") {
    print("saya akan membeli telur dan buah");
  if (telur == "soldout" || buah == "soldout") {
    print("belanjaan saya tidak lengkap");
  } else if (telur == "soldout") {
    print("telur habis");
  } else if (buah == "soldout") {
    print("buah habis");
  }
  } else {
    print("minimarket tutup, saya pulang lagi");
  }

  //conditional switch case
  var buttonPushed = 1;
  switch(buttonPushed) {
    case 1: { print('matikan TV!'); break; }
    case 2: { print('turunkan volume TV!'); break; }
    case 3: { print('tingkatkan volume TV!'); break; }
    case 4: { print('matikan suara TV!'); break; }
    default: { print('Tidak terjadi apa-apa'); }
  }
}