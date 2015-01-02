//LIB conv4


$(document).ready(function(){
	conv_active_sentences = conv_active_sentences.concat([27,28,29,30,31,32,33,36,37,38,39,41,43,44,45,80,81]);
});

function runConv4(convFlag)
{
    option_id = 1;
    clearConvOptionsArray();
	switch (getFlag(convFlag))
	{
		case 0:
			if (conv_active_sentences.indexOf(27) != -1) convOptionWrite(4,option_id++, '�D�nde estoy?', convFlag, 27);
			if (conv_active_sentences.indexOf(28) != -1) convOptionWrite(4,option_id++, '�Qui�n es usted?',convFlag, 28 );
			if (conv_active_sentences.indexOf(33) != -1) if (CNDzero(110) && CNDcarried(0) ) convOptionWrite(4,option_id++, '�Qu� planta es esa?', convFlag, 33);
			if (conv_active_sentences.indexOf(80) != -1) if (CNDnotzero(143) && CNDnotzero(88) ) convOptionWrite(4,option_id++, '�Como puedo conseguir otro somniferus?', convFlag,80);
			if (conv_active_sentences.indexOf(81) != -1) if (CNDnotzero(143) && CNDzero(88) )	convOptionWrite(4,option_id++,'�Como puedo conseguir otro somniferus?', convFlag, 81);
			if (conv_active_sentences.indexOf(36) != -1) if (CNDnotzero(110) && CNDzero(88) && CNDcarried(0))	convOptionWrite(4,option_id++,'Supongo que esto es lo que queria.',convFlag, 36);
			if (conv_active_sentences.indexOf(32) != -1) if (CNDnotzero(88)) convOptionWrite(4,option_id++ , 'C�enteme algo sobre el fort�n.', convFlag, 32);
			if (conv_active_sentences.indexOf(45) != -1) if (CNDnotzero(89)) convOptionWrite(4,option_id++ , '�De qu� discut�an usted y el armero?.', convFlag, 45);
			if (conv_active_sentences.indexOf(34) != -1) convOptionWrite(4,option_id++,'Adi�s.', convFlag, 34);
			if (conv_active_sentences.indexOf(35) != -1) convOptionWrite(4,option_id++,'Adi�s.', convFlag, 35);
		break;
		case 1:
			if (conv_active_sentences.indexOf(29) != -1) convOptionWrite(4,option_id++, '�Barbero forzoso?', convFlag, 29);
			if (conv_active_sentences.indexOf(30) != -1) convOptionWrite(4,option_id++, 'Creo que he perdido la memoria.', convFlag, 30);
			if (conv_active_sentences.indexOf(31) != -1) convOptionWrite(4,option_id++, 'Estoy al servicio del capit�n �lvarez �Sigue con vida?', convFlag, 31);
			if (conv_active_sentences.indexOf(33) != -1) convOptionWrite(4,option_id++, '�Qu� pas� con el naufragio?', convFlag, 33);
		break;
		case 2:
			if (conv_active_sentences.indexOf(37) != -1) if (CNDnotzero(89)) convOptionWrite(4,option_id++,'�De qu� discut�an usted y el armero?', convFlag, 37);
			if (conv_active_sentences.indexOf(38) != -1) convOptionWrite(4,option_id++, '�Qu� pas� con los n�ufragos?', convFlag, 38);
			if (conv_active_sentences.indexOf(39) != -1) if (CNDnotzero(90)) convOptionWrite(4,option_id++, '�Qu� buca el armero por las noches?', convFlag, 39);
			if (conv_active_sentences.indexOf(42) != -1) convOptionWrite(4,option_id++, '�No queda especia?', convFlag, 42);
			if (conv_active_sentences.indexOf(46) != -1) convOptionWrite(4,option_id++, '�D�nde van a buscarla?', convFlag, 46);
			if (conv_active_sentences.indexOf(43) != -1) convOptionWrite(4,option_id++, '�Por qu� hay tan poca gente en el fort�n?', convFlag, 43);
			if (conv_active_sentences.indexOf(40) != -1) convOptionWrite(4,option_id++, '�Qu� especia?', convFlag, 40);
			if (conv_active_sentences.indexOf(41) != -1) convOptionWrite(4,option_id++, ' Es suficiente.', convFlag, 41);
		break;
		default: ACClet(convFlag, 0);  ACCcommand(1); return; // salir de conversaci�n
	}

}

function responseConv4(convFlag, value)
{
	clearConvOptionsArray();
	$('.nmpconvoption a').attr('onclick','');
	switch (value)
	{
		// menu 0
		case 27: writeText("�No es evidente?  Se encuentra en la m�s desastrosa enfermer�a del fort�n m�s dejado de la mano de Dios.\n"); 
		         ACCexclude(27); 
		         break;

		case 28: writeText("Soy el barbero forzoso del lugar. El Capit�n est� interesado en saber qui�n es usted.\n");
		         ACCexclude(28);
		         ACClet(convFlag, 1);
		         break;

		case 33: writeText(" D�jeme ver...  - la coge cuidadosamente en la mano y empieza a diseccionarla con la mirada - Parece ser un Somniferus Radicalus, se disuelve f�cilmente en cualquier l�quido.\n"); 
				 ACCdestroy(17);
				 ACCexclude(33);
				 ACCset(110);
				 ACCexclude(34);
				 ACCinclude(35);
				 ACCget(0);
		         break;

		case 80: writeText("Todav�a conservo el que me di�. Tenga.\n");
				 ACCget(0);
				 ACCexclude(80);
		         break;

		case 81: writeText("Cons�game una flor como la que trajo anteriormente.\n");
				 ACCexclude(81);
 				 break;

		case 36: writeText("D�jeme ver... - tras un momento de observaci�n, desliza la planta en uno de sus bolsillos - Como dije, sabr� ser generoso. �Qu� le gustaria saber sobre el Fort�n?\n");
				 ACCdestroy(17);
				 ACCset(88);
				 ACCset(142);
				 ACCexclude(45);
		         break;

		case 32: writeText("�Qu� quiere saber?\n");
				 ACClet(convFlag,2);
				 break;

		case 45: writeText("Preferir�a no hablar de ello.\n");
				 ACClet(convFlag,100);
				 break;

		case 34: writeText("Por aqu� estar�.\n");
				 ACClet(convFlag,100);
		         break;

		case 35: writeText("Por aqu� estar�. El barbero como expresando un deseo oculto dice: 'Si puede conseguirme otro Somniferus para mi estudio, sabr� ser generoso'.\n");
				 ACCexclude(35);
				 ACCinclude(34);
				 ACClet(convFlag,100);
		         break;

		// menu 1
		case 29: writeText("S�. En realidad soy un estudioso de las hierbas, acept� el trabajo para as� tener la oportunidad de viajar al nuevo mundo.\n");
				 ACCexclude(29);
		         break;

		case 30: writeText("No parece tener ninguna herida en la cabeza. T�mese un tiempo para recordar lo sucedido y vaya a ver al capit�n.\n");
				 ACCexclude(30);
				 ACCinclude(34);
				 ACClet(convFlag,0);
		         break;

		case 31: writeText("No se ha encontrado a ning�n Capit�n �lvarez entre los heridos - Ves como se levanta y sale fuera.\n");
				 ACCexclude(31);
				 ACCset(77);			  // Da la alarma para que te maten
				 ACClet(convFlag,100);
		         break;

		case 44: writeText("Esperaba que fuese usted quien dijera algo. Por lo que he o�do debieron de chocar contra alguna roca, espero que no llevasen un cargamento importante.\n");
		         break;


		// menu 2
		case 37: writeText("De qu� discutiremos, querr� decir. Todas las tardes viene con el mismo cuento, se queja de dolores imaginarios. Todo por conseguir una d�sis de la especia.\n");
				 ACCexclude(37);
				 ACCinclude(40);
		         break;

		case 38: writeText("Esa pregunta es f�cil de responder: No hubo supervivientes.");
				 ACCexclude(38);
		         break;

		case 39: writeText("Probablemente la especia. Pero no la encontrar�, no queda. Me pregunto que podr� m�s,  si la especia o el nulo sentido com�n que queda del hombre que fue.\n");
				 ACCexclude(39);
				 ACCinclude(40);
				 ACCinclude(42);
		         break;

		case 42: writeText("En efecto. Como ya escuch� al armero, van a organizar otra expedici�n y esta vez iremos todos. Prefirir�a no ir, pero si no lo hago el Capit�n se encargar� personalmente de mi.\n");
				 ACCexclude(42);
				 ACCinclude(46);
		         break;

		case 46: writeText("No lo s�. Creo que a una plantaci�n natural que hay en el interior de la isla. Pero el trayecto debe de ser muy peligroso, son pocos los que vuelven...\n");
				 ACCexclude(46);
		         break;

		case 43: writeText("Har� ya dos a�os desde nuestra llegada, cr�ame si le digo que la vida aqu� es muy dura. Se diria que la tierra est� maldita. Cuando la encontramos pensamos que era medicinal, hasta que tuvimos problemas y la gente empez� a morir.\n");
				 ACCexclude(43);
		         break;

		case 40: writeText("La expresi�n del barbero se vuelve grave - La planta del soldado. Vinimos para conseguir un buen lugar donde 'comerciar' sin ser vistos, pero la encontramos. Ser� nuestra definitiva perdici�n, nadie la sobrevive, cr�ame... NADIE.\n");
				 ACCexclude(40);
		         break;

		case 41: writeText("Acepte mi consejo: cu�dese del veneno que no mata.\n");
				 ACClet(convFlag,0);
		         break;
	};

	runConv4(convFlag);
}

