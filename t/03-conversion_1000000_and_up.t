# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 86;
BEGIN { use_ok('Lingua::PT::Words2Nums') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

is(word2num('um milh�o'),1000000);
is(word2num('um milh�o e um'),1000001);
is(word2num('um milh�o e mil'),1001000);
is(word2num('um milh�o mil e um'),1001001);
is(word2num('dois milh�es vinte mil duzentos e dois'),2020202);
is(word2num('tr�s milh�es trezentos mil trezentos e trinta'),3300330);
is(word2num('quatro milh�es quatro mil e quatro'),4004004);
is(word2num('cinco milh�es cinquenta mil e cinquenta e cinco'),5050055);
is(word2num('seis milh�es seiscentos e sessenta mil'),6660000);
is(word2num('sete milh�es setecentos mil setecentos e setenta e sete'),7700777);
is(word2num('oito milh�es oitocentos e oitenta e oito mil oitocentos e oitenta e oito'),8888888);
is(word2num('nove milh�es novecentos e noventa e nove mil e novecentos'),9999900);

is(word2num('dez milh�es'),10000000);
is(word2num('vinte milh�es duzentos e dois mil e vinte'),20202020);
is(word2num('trinta e tr�s milh�es tr�s mil e trezentos'),33003300);
is(word2num('quarenta milh�es quarenta e quatro mil e quatro'),40044004);
is(word2num('cinquenta e cinco milh�es quinhentos mil e cinquenta e cinco'),55500055);
is(word2num('sessenta e seis milh�es'),66000000);
is(word2num('setenta milh�es e sete'),70000007);
is(word2num('oitenta e oito milh�es oitenta mil oitocentos e oito'),88080808);
is(word2num('noventa e oito milh�es novecentos e oitenta e nove mil oitocentos e noventa e oito'),98989898);
is(word2num('noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),99999999);

is(word2num('cem milh�es'),100000000);
is(word2num('duzentos e dois milh�es vinte mil e duzentos'),202020200);
is(word2num('trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s'),303303303);
is(word2num('quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),444444444);
is(word2num('quinhentos e cinquenta milh�es e cinquenta e cinco mil'),550055000);
is(word2num('seiscentos e sessenta e seis milh�es e seiscentos mil'),666600000);
is(word2num('setecentos milh�es e sete'),700000007);
is(word2num('oitocentos e oitenta e um milh�es duzentos e trinta e quatro mil quinhentos e noventa e nove'),881234599);
is(word2num('novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),999999999);

is(word2num('mil milh�es'),1000000000);
is(word2num('dois mil e vinte milh�es duzentos e dois mil e vinte'),2020202020);
is(word2num('tr�s mil e trinta e tr�s milh�es trinta e tr�s mil e trinta'),3033033030);
is(word2num('quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),4444444444);
is(word2num('cinco mil e quinhentos milh�es quinhentos e cinquenta mil'),5500550000);
is(word2num('seis mil seiscentos e sessenta e seis milh�es e seiscentos mil'),6666600000);
is(word2num('sete mil milh�es e sete'),7000000007);
is(word2num('oito mil oitocentos e doze milh�es trezentos e quarenta e cinco mil novecentos e noventa e nove'),8812345999);
is(word2num('nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),9999999999);

is(word2num('dez mil milh�es'),10000000000);
is(word2num('vinte mil duzentos e dois milh�es vinte mil e duzentos'),20202020200);
is(word2num('trinta mil trezentos e trinta milh�es trezentos e trinta mil e trezentos'),30330330300);
is(word2num('quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),44444444444);
is(word2num('cinquenta e cinco mil e cinco milh�es e quinhentos mil'),55005500000);
is(word2num('sessenta e seis mil seiscentos e sessenta e seis milh�es'),66666000000);
is(word2num('setenta mil milh�es e sete'),70000000007);
is(word2num('oitenta e oito mil cento e vinte e tr�s milh�es quatrocentos e cinquenta e nove mil novecentos e noventa e nove'),88123459999);
is(word2num('noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),99999999999);

is(word2num('cem mil milh�es'),100000000000);
is(word2num('duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte'),202020202020);
is(word2num('trezentos e tr�s mil trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s'),303303303303);
is(word2num('quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),444444444444);
is(word2num('quinhentos e cinquenta mil e cinquenta e cinco milh�es cinco mil e quinhentos'),550055005500);
is(word2num('seiscentos e sessenta e seis mil seiscentos e sessenta e seis milh�es'),666666000000);
is(word2num('setecentos mil milh�es e sete'),700000000007);
is(word2num('oitocentos e oitenta e um mil duzentos e trinta e quatro milh�es quinhentos e noventa e nove mil novecentos e noventa e nove'),881234599999);
is(word2num('novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),999999999999);

is(word2num('um bili�o'),1000000000000);
is(word2num('dois bili�es vinte mil duzentos e dois milh�es vinte mil e duzentos'),2020202020200);
is(word2num('tr�s bili�es trinta e tr�s mil e trinta e tr�s milh�es trinta e tr�s mil e trinta'),3033033033030);
is(word2num('quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),4444444444444);
is(word2num('cinco bili�es quinhentos mil quinhentos e cinquenta milh�es e cinquenta e cinco mil'),5500550055000);
is(word2num('seis bili�es seiscentos e sessenta e seis mil seiscentos e sessenta milh�es'),6666660000000);
is(word2num('sete bili�es e sete'),7000000000007);
is(word2num('oito bili�es oitocentos e doze mil trezentos e quarenta e cinco milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),8812345999999);
is(word2num('nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),9999999999999);

is(word2num('dez bili�es'),10000000000000);
is(word2num('vinte bili�es duzentos e dois mil e vinte milh�es duzentos e dois mil e vinte'),20202020202020);
is(word2num('trinta bili�es trezentos e trinta mil trezentos e trinta milh�es trezentos e trinta mil e trezentos'),30330330330300);
is(word2num('quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),44444444444444);
is(word2num('cinquenta e cinco bili�es cinco mil e quinhentos milh�es quinhentos e cinquenta mil'),55005500550000);
is(word2num('sessenta e seis bili�es seiscentos e sessenta e seis mil seiscentos e sessenta milh�es'),66666660000000);
is(word2num('setenta bili�es e sete'),70000000000007);
is(word2num('oitenta e oito bili�es cento e vinte e tr�s mil quatrocentos e cinquenta e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),88123459999999);
is(word2num('noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),99999999999999);

is(word2num('cem bili�es'),100000000000000);
is(word2num('duzentos e dois bili�es vinte mil duzentos e dois milh�es vinte mil e duzentos'),202020202020200);
is(word2num('trezentos e tr�s bili�es trezentos e tr�s mil trezentos e tr�s milh�es trezentos e tr�s mil trezentos e tr�s'),303303303303303);
is(word2num('quatrocentos e quarenta e quatro bili�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro milh�es quatrocentos e quarenta e quatro mil quatrocentos e quarenta e quatro'),444444444444444);
is(word2num('quinhentos e cinquenta bili�es cinquenta e cinco mil e cinco milh�es e quinhentos mil'),550055005500000);
is(word2num('seiscentos e sessenta e seis bili�es seiscentos e sessenta e seis mil e seiscentos milh�es'),666666600000000);
is(word2num('setecentos bili�es e sete'),700000000000007);
is(word2num('oitocentos e oitenta e um bili�es duzentos e trinta e quatro mil quinhentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),881234599999999);
is(word2num('novecentos e noventa e nove bili�es novecentos e noventa e nove mil novecentos e noventa e nove milh�es novecentos e noventa e nove mil novecentos e noventa e nove'),999999999999999);

TODO: {

  local $TODO = 'up, up... and away!!!';

}
