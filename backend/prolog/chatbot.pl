:- discontiguous responder/3.
:- discontiguous responder/1.
:- discontiguous buscar_pokemon/2.
:- discontiguous movimientos/2.
:- discontiguous buscar_tipo/2.
:- discontiguous quien_gana/3.
:- initialization(main).
% Predicado auxiliar para listar todos los tipos conocidos

tipo_pokemon(planta).
tipo_pokemon(agua).
tipo_pokemon(fuego).
tipo_pokemon(electrico).
tipo_pokemon(psiquico).
tipo_pokemon(siniestro).
tipo_pokemon(fantasma).
tipo_pokemon(veneno).
tipo_pokemon(acero).
tipo_pokemon(hada).
tipo_pokemon(insecto).
tipo_pokemon(pelea).
tipo_pokemon(volador).
tipo_pokemon(roca).
tipo_pokemon(tierra).
tipo_pokemon(hielo).
tipo_pokemon(dragon).
tipo_pokemon(normal).
tipo_pokemon(ninguno).


% super_efectivo(Atacante, Defensor).

super_efectivo(planta, agua).
super_efectivo(planta, tierra).
super_efectivo(planta, roca).

super_efectivo(agua, fuego).
super_efectivo(agua, roca).
super_efectivo(agua, tierra).

super_efectivo(fuego, planta).
super_efectivo(fuego, insecto).
super_efectivo(fuego, hielo).
super_efectivo(fuego, acero).

super_efectivo(electrico, volador).
super_efectivo(electrico, agua).

super_efectivo(psiquico, pelea).
super_efectivo(psiquico, veneno).

super_efectivo(siniestro, psiquico).
super_efectivo(siniestro, fantasma).

super_efectivo(fantasma, fantasma).
super_efectivo(fantasma, psiquico).

super_efectivo(veneno, planta).
super_efectivo(veneno, hada).

super_efectivo(acero, hielo).
super_efectivo(acero, hada).
super_efectivo(acero, roca).

super_efectivo(hada, dragon).
super_efectivo(hada, siniestro).
super_efectivo(hada, pelea).

super_efectivo(insecto, psiquico).
super_efectivo(insecto, siniestro).
super_efectivo(insecto, planta).

super_efectivo(pelea, hielo).
super_efectivo(pelea, normal).
super_efectivo(pelea, roca).
super_efectivo(pelea, siniestro).
super_efectivo(pelea, acero).

super_efectivo(volador, pelea).
super_efectivo(volador, planta).
super_efectivo(volador, insecto).

super_efectivo(roca, hielo).
super_efectivo(roca, volador).
super_efectivo(roca, insecto).
super_efectivo(roca, fuego).

super_efectivo(tierra, electrico).
super_efectivo(tierra, roca).
super_efectivo(tierra, fuego).
super_efectivo(tierra, veneno).
super_efectivo(tierra, acero).

super_efectivo(hielo, volador).
super_efectivo(hielo, planta).
super_efectivo(hielo, dragon).
super_efectivo(hielo, tierra).

super_efectivo(dragon, dragon).

%no_efectivo(Atacante, Defensor). (mitad de daño)

no_efectivo(planta, volador).
no_efectivo(planta, planta).
no_efectivo(planta, insecto).
no_efectivo(planta, fuego).
no_efectivo(planta, veneno).
no_efectivo(planta, dragon).
no_efectivo(planta, acero).

no_efectivo(agua, planta).
no_efectivo(agua, volador).
no_efectivo(agua, agua).

no_efectivo(fuego, agua).
no_efectivo(fuego, roca).
no_efectivo(fuego, fuego).
no_efectivo(fuego, dragon).

no_efectivo(normal, roca).
no_efectivo(normal, acero).

no_efectivo(electrico, planta).
no_efectivo(electrico, electrico).
no_efectivo(electrico, dragon).

no_efectivo(psiquico, acero).
no_efectivo(psiquico, psiquico).

no_efectivo(siniestro, pelea).
no_efectivo(siniestro, hada).
no_efectivo(siniestro, siniestro).

no_efectivo(fantasma, siniestro).

no_efectivo(veneno, roca).
no_efectivo(veneno, tierra).
no_efectivo(veneno, veneno).
no_efectivo(veneno, fantasma).

no_efectivo(acero, agua).
no_efectivo(acero, electrico).
no_efectivo(acero, fuego).
no_efectivo(acero, acero).

no_efectivo(hada, fuego).
no_efectivo(hada, veneno).
no_efectivo(hada, acero).

no_efectivo(insecto, volador).
no_efectivo(insecto, pelea).
no_efectivo(insecto, fuego).
no_efectivo(insecto, hada).
no_efectivo(insecto, veneno).
no_efectivo(insecto, fantasma).
no_efectivo(insecto, acero).

no_efectivo(pelea, volador).
no_efectivo(pelea, insecto).
no_efectivo(pelea, hada).
no_efectivo(pelea, psiquico).
no_efectivo(pelea, veneno).

no_efectivo(volador, electrico).
no_efectivo(volador, roca).
no_efectivo(volador, acero).

no_efectivo(roca, tierra).
no_efectivo(roca, pelea).
no_efectivo(roca, acero).

no_efectivo(tierra, planta).
no_efectivo(tierra, insecto).

no_efectivo(hielo, hielo).
no_efectivo(hielo, agua).
no_efectivo(hielo, fuego).
no_efectivo(hielo, acero).

no_efectivo(dragon, acero).

%inmune(Atacante, Defensor).

inmune(veneno, acero).

inmune(tierra, volador).

inmune(fantasma, normal).

inmune(electrico, tierra).

inmune(dragon, hada).

inmune(pelea, fantasma).

inmune(normal, fantasma).

inmune(psiquico, siniestro).



%movimiento(Nombre, Tipo, Categoría, Potencia).

movimiento(golpe_cabeza, normal, fisico, 70).
movimiento(garra_dragon, dragon, fisico, 80).
movimiento(choque_psiquico, psiquico, especial, 80).
movimiento(golpe_roca, pelea, fisico, 40).
movimiento(rugido, normal, estado, 0).
movimiento(paz_mental, psiquico, estado, 0).
movimiento(toxico, veneno, estado, 0).
movimiento(onda_trueno, electrico, estado, 0).
movimiento(viraje, agua, fisico, 60).
movimiento(karatazo, pelea, fisico, 75).
movimiento(corpulencia, pelea, estado, 0).
movimiento(avalancha, roca, fisico, 75).
movimiento(rayo_de_hielo, hielo, especial, 90).
movimiento(colmillo_fuego, fuego, fisico, 65).
movimiento(colmillo_hielo, hielo, fisico, 65).
movimiento(pantalla_de_luz, psiquico, estado, 0).
movimiento(proteccion, normal, estado, 0).
movimiento(puño_incremento, pelea, fisico, 40).
movimiento(joya_de_luz, roca, especial, 80).
movimiento(juego_rudo, hada, fisico, 90).
movimiento(colmillo_trueno, electrico, fisico, 65).
movimiento(as_aereo, volador, fisico, 60).
movimiento(puño_trueno, electrico, fisico, 75).
movimiento(triturar, siniestro, fisico, 80).
movimiento(bola_de_energia, planta, especial, 90).
movimiento(meteoros, normal, especial, 60).
movimiento(excavar, tierra, fisico, 80).
movimiento(puño_fuego, fuego, fisico, 75).
movimiento(danza_de_espadas, normal, estado, 0).
movimiento(reflejo, psiquico, estado, 0).
movimiento(doble_equipo, normal, estado, 0).
movimiento(golpe_de_cuerpo, normal, fisico, 85).
movimiento(corte_umbrio, siniestro, fisico, 70).
movimiento(aguante, normal, estado, 0).
movimiento(tumba_de_rocas, roca, fisico, 60).
movimiento(trampa_de_rocas, roca, estado, 0).
movimiento(llamarada, fuego, especial, 110).
movimiento(chispazo, electrico, especial, 80).
movimiento(bala_semilla, planta, fisico, 25).
movimiento(pulso_de_agua, agua, especial, 60).
movimiento(gigadrenado, planta, especial, 75).
movimiento(vuelo, volador, fisico, 90).
movimiento(hiperrayo, normal, especial, 150).
movimiento(desarme, siniestro, fisico, 65).
movimiento(disparo_de_lodo, tierra, especial, 55).
movimiento(agilidad, psiquico, estado, 0).
movimiento(autodestruccion, normal, fisico, 200).
movimiento(viento_helado, hielo, especial, 55).
movimiento(supercalor, fuego, especial, 130).
movimiento(velo_sagrado, normal, estado, 0).
movimiento(poder_terrestre, tierra, especial, 90).
movimiento(bomba_lodo, veneno, especial, 90).
movimiento(meteoro_dragon, dragon, especial, 130).
movimiento(giga_impacto, normal, fisico, 150).
movimiento(doble_filo, normal, fisico, 120).
movimiento(fuego_fatuo, fuego, estado, 0).
movimiento(cabeza_de_hierro, acero, fisico, 80).
movimiento(cabezazo_zen, psiquico, fisico, 80).
movimiento(premonicion, psiquico, especial, 120).
movimiento(garra_de_sombra, fantasma, fisico, 70).
movimiento(lanza_llamas, fuego, especial, 90).
movimiento(fuerza_psiquica, psiquico, especial, 90).
movimiento(rayo_solar, planta, especial, 120).
movimiento(roca_afilada, roca, fisico, 100).
movimiento(cambia_voltaje, electrico, especial, 70).
movimiento(atactrueno, electrico, especial, 90).
movimiento(onda_ignea, fuego, especial, 95).
movimiento(terremoto, tierra, fisico, 100).
movimiento(remolino, agua, especial, 35).
movimiento(hipervoz, normal, especial, 90).
movimiento(giro_fuego, fuego, especial, 35).
movimiento(surf, agua, especial, 90).
movimiento(bola_sombra, fantasma, especial, 80).
movimiento(pulso_dragon, dragon, especial, 85).
movimiento(hidroariete, agua, fisico, 85).
movimiento(golpe_venenoso, veneno, fisico, 80).
movimiento(terratemblor, tierra, fisico, 60).
movimiento(huracan, volador, especial, 110).
movimiento(defensa_hierro, acero, estado, 0).
movimiento(tijera_x, insecto, fisico, 80).
movimiento(ida_y_vuelta, insecto, fisico, 70).
movimiento(maquinacion, siniestro, estado, 0).
movimiento(cañon_resplandor, acero, especial, 80).
movimiento(sustituto, normal, estado, 0).
movimiento(carga_salvaje, electrico, fisico, 90).
movimiento(cola_de_hierro, acero, fisico, 100).
movimiento(puas, tierra, estado, 0).
movimiento(puas_toxicas, veneno, estado, 0).
movimiento(pulso_oscuro, siniestro, especial, 80).
movimiento(maldicion, fantasma, estado, 0).
movimiento(brillo_magico, hada, especial, 80).
movimiento(enfado, dragon, fisico, 120).
movimiento(torbellino, normal, estado, 0).
movimiento(provocacion, siniestro, estado, 0).
movimiento(hidrobomba, agua, especial, 110).
movimiento(anticuracion, psiquico, estado, 0).
movimiento(cascada, agua, fisico, 80).
movimiento(metronomo, normal, estado, 0).
movimiento(lanzamugre, veneno, fisico, 120).
movimiento(electrotela, electrico, especial, 55).
movimiento(ataque_centrado, pelea, especial, 120).
movimiento(avivar, normal, estado, 0).
movimiento(erupcion, fuego, fisico, 120).
movimiento(ventisca, hielo, especial, 110).
movimiento(trueno, electrico, especial, 110).
movimiento(cuerpo_a_cuerpo, pelea, fisico, 120).
movimiento(tacleada, normal, fisico, 40).
movimiento(latigo_de_cola, normal, estado, 0).
movimiento(follaje, planta, fisico, 40).
movimiento(voz_encantadora, hada, especial, 40).
movimiento(garra_metal, acero, fisico, 50).
movimiento(soplido, normal, estado, 0).
movimiento(danza_llamas, fuego, estado, 0).
movimiento(onda_sonica, normal, especial, 40).
movimiento(rayo_confuso, psiquico, especial, 50).
movimiento(torbellino_hojas, planta, especial, 55).
movimiento(furia_lucha, lucha, fisico, 70).
movimiento(puño_hielo, hielo, fisico, 75).
movimiento(cola_dragón, dragon, fisico, 85).
movimiento(chirrido, normal, estado, 0).
movimiento(golpe_psiquico, psiquico, fisico, 60).
movimiento(puño_luz, hada, fisico, 70).
movimiento(bola_fantasma, fantasma, especial, 90).
movimiento(terremoto_oscuro, tierra, fisico, 110).
movimiento(explosion_dragon, dragon, especial, 100).
movimiento(luz_espacial, psiquico, especial, 120).
movimiento(tajo_roca, roca, fisico, 75).
movimiento(patada_voladora, volador, fisico, 70).
movimiento(flecha_fuego, fuego, especial, 65).
movimiento(chorro_hielo, hielo, especial, 75).
movimiento(drenaje_solar, planta, especial, 60).
movimiento(poder_tierra, tierra, especial, 90).
movimiento(onda_electrica, electrico, especial, 80).
movimiento(cuchillada_acero, acero, fisico, 85).
movimiento(sacudida, normal, fisico, 60).
movimiento(patada_sombras, siniestro, fisico, 75).
movimiento(flecha_agua, agua, especial, 70).
movimiento(pulso_dragon, dragon, especial, 85).
movimiento(choque_rocas, roca, fisico, 90).
movimiento(viento_cortante, volador, especial, 60).
movimiento(puño_sombra, siniestro, fisico, 80).
movimiento(huracan_planta, planta, especial, 100).
movimiento(espiral_agua, agua, especial, 80).
movimiento(lanza_viento, volador, fisico, 75).
movimiento(onda_fulgor, electrico, especial, 90).
movimiento(martillo_acero, acero, fisico, 95).
movimiento(destello_mental, psiquico, especial, 100).
movimiento(tajo_luz, normal, fisico, 80).
movimiento(colmillo_sombras, siniestro, fisico, 85).
movimiento(embestida_fuego, fuego, fisico, 90).
movimiento(chorro_gelido, hielo, especial, 95).
movimiento(pulso_tierra, tierra, especial, 80).
movimiento(danza_dragon, dragon, estado, 0).
movimiento(corte_aire, volador, fisico, 70).
movimiento(flecha_metal, acero, fisico, 90).
movimiento(furia_planta, planta, fisico, 75).
movimiento(luz_curativa, psiquico, estado, 0).
movimiento(gran_choque, normal, fisico, 100).
movimiento(doble_patada, lucha, fisico, 80).
movimiento(patada_hielo, hielo, fisico, 70).
movimiento(espiral_fantasma, fantasma, especial, 90).
movimiento(puño_furia, lucha, fisico, 95).
movimiento(descarga_fulgor, electrico, especial, 100).
movimiento(golpe_roca_letal, roca, fisico, 110).
movimiento(lanza_llama_extrema, fuego, especial, 120).
movimiento(eco_dragon, dragon, especial, 85).
movimiento(viento_gélido, hielo, especial, 60).
movimiento(corte_sombrío, siniestro, fisico, 75).
movimiento(explosion_luz, psiquico, especial, 130).
movimiento(rugido_tierra, tierra, fisico, 90).
movimiento(drenaje_vida, planta, especial, 60).
movimiento(impacto_aleatorio, normal, fisico, 50).
movimiento(baile_hada, hada, estado, 0).
movimiento(maldicion_fantasma, fantasma, estado, 0).
movimiento(gran_tornado, volador, especial, 110).
movimiento(destruccion_mental, psiquico, especial, 110).
movimiento(patada_voladora, volador, fisico, 90).
movimiento(gran_martillo, lucha, fisico, 110).
movimiento(bola_fantasma, fantasma, especial, 85).
movimiento(llamada_fuego, fuego, estado, 0).
movimiento(golpe_garra, normal, fisico, 70).
movimiento(explosion_acero, acero, especial, 120).
movimiento(rayo_dragon, dragon, especial, 100).
movimiento(flecha_hielo, hielo, fisico, 75).
movimiento(vibracion_sonora, normal, especial, 60).
movimiento(corte_roca, roca, fisico, 80).
movimiento(puño_relampago, electrico, fisico, 80).
movimiento(martillo_rocoso, roca, fisico, 90).
movimiento(espiral_fuego, fuego, especial, 95).
movimiento(descarga_trueno, electrico, especial, 110).
movimiento(onda_agua, agua, especial, 70).
movimiento(colmillo_luz, acero, fisico, 85).
movimiento(garra_umbra, siniestro, fisico, 75).
movimiento(tornado_volador, volador, especial, 100).
movimiento(rayo_helado, hielo, especial, 80).
movimiento(patada_sombría, siniestro, fisico, 90).
movimiento(danza_acero, acero, estado, 0).
movimiento(puño_ombra, fantasma, fisico, 95).
movimiento(bola_de_luz, psiquico, especial, 90).
movimiento(martillo_dragón, dragon, fisico, 100).
movimiento(colmillo_veneno, veneno, fisico, 80).
movimiento(furia_espacial, normal, especial, 120).
movimiento(gran_onda, agua, especial, 95).
movimiento(doble_corte, insecto, fisico, 80).
movimiento(pulso_magico, hada, especial, 85).
movimiento(espada_luminosa, hada, fisico, 90).
movimiento(impacto_volador, volador, fisico, 85).
movimiento(ventisca_extrema, hielo, especial, 120).
movimiento(explosion_tierra, tierra, fisico, 110).
movimiento(Golpe Roca, lucha, fisico, 40).
movimiento(Terremoto, tierra, fisico, 100).
movimiento(Avalancha, roca, fisico, 75).
movimiento(Roca Afilada, roca, fisico, 100).
movimiento(Trampa de Rocas, roca, estado, 0).

%Lista de pokémon

% pkm_base(PokedexNacional, Especie, TipoPrimario, TipoSecundario, HP, Atq, Def, AtqEsp, DefEsp, Vel, StatsTotl)
pkm_base(152, chikorita, planta, ninguno, 45, 49, 65, 49, 65, 45, 318).
pkm_base(153, bayleef, planta, ninguno, 60, 62, 80, 63, 80, 60, 405).
pkm_base(154, meganium, planta, ninguno, 80, 82, 100, 83, 100, 80, 525).
pkm_base(498, tepig, fuego, ninguno, 65, 63, 45, 45, 45, 45, 308).
pkm_base(499, pignite, fuego, pelea, 90, 93, 55, 70, 55, 55, 418).
pkm_base(500, emboar, fuego, pelea, 110, 123, 65, 100, 65, 65, 528).
pkm_base(158, totodile, agua, ninguno, 50, 65, 64, 44, 48, 43, 314).
pkm_base(159, croconaw, agua, ninguno, 65, 80, 80, 59, 63, 58, 405).
pkm_base(160, feraligatr, agua, ninguno, 85, 105, 100, 79, 83, 78, 530).
pkm_base(661, fletchling, normal, volador, 45, 50, 43, 40, 38, 62, 278).
pkm_base(662, fletchinder, fuego, volador, 62, 73, 55, 56, 52, 84, 382).
pkm_base(663, talonflame, fuego, volador, 78, 81, 71, 74, 69, 126, 499).
pkm_base(659, bunnelby, normal, ninguno, 38, 36, 38, 32, 36, 57, 237).
pkm_base(660, diggersby, normal, tierra, 85, 56, 77, 50, 77, 78, 423).
pkm_base(664, scatterbug, insecto, ninguno, 38, 35, 40, 27, 25, 35, 200).
pkm_base(665, spewpa, insecto, ninguno, 45, 22, 60, 27, 30, 29, 213).
pkm_base(666, vivillon, insecto, volador, 80, 52, 50, 90, 50, 89, 411).
pkm_base(13, weedle, insecto, veneno, 40, 35, 30, 20, 20, 50, 195).
pkm_base(14, kakuna, insecto, veneno, 45, 25, 50, 25, 25, 35, 205).
pkm_base(15, beedrill, insecto, veneno, 65, 90, 40, 45, 80, 75, 395).
pkm_base(16, pidgey, normal, volador, 40, 45, 40, 35, 35, 56, 251).
pkm_base(17, pidgeotto, normal, volador, 63, 60, 55, 50, 50, 71, 349).
pkm_base(18, pidgeot, normal, volador, 83, 80, 75, 70, 70, 101, 479).
pkm_base(179, mareep, electrico, ninguno, 55, 40, 40, 65, 45, 35, 280).
pkm_base(180, flaaffy, electrico, ninguno, 70, 55, 55, 80, 60, 45, 365).
pkm_base(181, ampharos, electrico, ninguno, 90, 75, 85, 115, 90, 55, 510).
pkm_base(504, patrat, normal, ninguno, 45, 55, 39, 35, 39, 42, 255).
pkm_base(505, watchog, normal, ninguno, 60, 85, 69, 60, 69, 77, 420).
pkm_base(406, budew, planta, veneno, 40, 30, 35, 50, 70, 55, 280).
pkm_base(315, roselia, planta, veneno, 50, 60, 45, 100, 80, 65, 400).
pkm_base(407, roserade, planta, veneno, 60, 70, 65, 125, 105, 90, 515).
pkm_base(129, magikarp, agua, ninguno, 20, 10, 55, 15, 20, 80, 200).
pkm_base(130, gyarados, agua, volador, 95, 125, 79, 60, 100, 81, 540).
pkm_base(688, binacle, roca, agua, 42, 52, 67, 39, 56, 50, 306).
pkm_base(689, barbaracle, roca, agua, 72, 105, 115, 54, 86, 68, 500).
pkm_base(120, staryu, agua, ninguno, 30, 45, 55, 70, 55, 85, 340).
pkm_base(121, starmie, agua, psiquico, 60, 75, 85, 100, 85, 115, 520).
pkm_base(669, flabebe, hada, ninguno, 44, 38, 39, 61, 79, 42, 303).
pkm_base(670, floette, hada, ninguno, 54, 45, 47, 75, 98, 52, 371).
pkm_base(671, florges, hada, ninguno, 78, 65, 68, 112, 154, 75, 552).
pkm_base(672, skiddo, planta, ninguno, 66, 65, 48, 62, 57, 52, 350).
pkm_base(673, gogoat, planta, ninguno, 123, 100, 62, 97, 81, 68, 531).
pkm_base(677, espurr, psiquico, ninguno, 62, 48, 54, 63, 60, 68, 355).
pkm_base(678, meowstic, psiquico, ninguno, 74, 48, 76, 83, 81, 104, 466).
pkm_base(667, litleo, fuego, normal, 62, 50, 58, 73, 54, 72, 369).
pkm_base(668, pyroar, fuego, normal, 86, 68, 72, 109, 66, 106, 507).
pkm_base(674, pancham, pelea, ninguno, 67, 82, 62, 46, 48, 43, 348).
pkm_base(675, pangoro, pelea, siniestro, 95, 124, 78, 69, 71, 58, 495).
pkm_base(568, trubbish, veneno, ninguno, 50, 50, 62, 40, 62, 65, 329).
pkm_base(569, garbodor, veneno, ninguno, 80, 95, 82, 60, 82, 75, 474).
pkm_base(702, dedene, electrico, hada, 67, 58, 57, 81, 67, 101, 431).
pkm_base(172, pichu, electrico, ninguno, 20, 40, 15, 35, 35, 60, 205).
pkm_base(25, pikachu, electrico, ninguno, 35, 55, 40, 50, 50, 90, 320).
pkm_base(26, raichu, electrico, ninguno, 60, 90, 55, 90, 80, 110, 485).
pkm_base(173, cleffa, hada, ninguno, 50, 25, 28, 45, 55, 15, 218).
pkm_base(35, clefairy, hada, ninguno, 70, 45, 48, 60, 65, 35, 323).
pkm_base(36, clefable, hada, ninguno, 95, 70, 73, 95, 90, 60, 483).
pkm_base(167, spinarak, insecto, veneno, 40, 60, 40, 40, 40, 30, 250).
pkm_base(168, ariados, insecto, veneno, 70, 90, 70, 60, 70, 40, 400).
pkm_base(23, ekans, veneno, ninguno, 35, 60, 44, 40, 54, 55, 288).
pkm_base(24, arbok, veneno, ninguno, 60, 95, 69, 65, 79, 80, 448).
pkm_base(63, abra, psiquico, ninguno, 25, 20, 15, 105, 55, 90, 310).
pkm_base(64, kadabra, psiquico, ninguno, 40, 35, 30, 120, 70, 105, 400).
pkm_base(65, alakazam, psiquico, ninguno, 55, 50, 45, 135, 95, 120, 500).
pkm_base(92, gastly, fantasma, veneno, 30, 35, 30, 100, 35, 80, 310).
pkm_base(93, haunter, fantasma, veneno, 45, 50, 45, 115, 55, 95, 405).
pkm_base(94, gengar, fantasma, veneno, 60, 65, 60, 130, 75, 110, 500).
pkm_base(543, venipede, insecto, veneno, 30, 45, 59, 30, 39, 57, 260).
pkm_base(544, whirlipede, insecto, veneno, 40, 55, 99, 40, 79, 47, 360).
pkm_base(545, scolipede, insecto, veneno, 60, 100, 89, 55, 69, 112, 485).
pkm_base(679, honedge, acero, fantasma, 45, 80, 100, 35, 37, 28, 325).
pkm_base(680, doublade, acero, fantasma, 59, 110, 150, 45, 49, 35, 448).
pkm_base(681, aegislash, acero, fantasma, 60, 50, 140, 50, 140, 60, 500).
pkm_base(69, bellsprout, planta, veneno, 50, 75, 35, 70, 30, 40, 300).
pkm_base(70, weepinbell, planta, veneno, 65, 90, 50, 85, 45, 55, 390).
pkm_base(71, victreebel, planta, veneno, 80, 105, 65, 100, 70, 70, 490).
pkm_base(511, pansage, planta, ninguno, 50, 53, 48, 53, 48, 64, 316).
pkm_base(512, simisage, planta, ninguno, 75, 98, 63, 98, 63, 101, 498).
pkm_base(513, pansear, fuego, ninguno, 50, 53, 48, 53, 48, 64, 316).
pkm_base(514, simisear, fuego, ninguno, 75, 98, 63, 98, 63, 101, 498).
pkm_base(515, panpour, agua, ninguno, 50, 53, 48, 53, 48, 64, 316).
pkm_base(516, simipour, agua, ninguno, 75, 98, 63, 98, 63, 101, 498).
pkm_base(307, meditite, pelea, psiquico, 30, 40, 55, 40, 55, 60, 280).
pkm_base(308, medicham, pelea, psiquico, 60, 60, 75, 60, 75, 80, 410).
pkm_base(309, electrike, electrico, ninguno, 40, 45, 40, 65, 40, 65, 295).
pkm_base(310, manectric, electrico, ninguno, 70, 75, 60, 105, 60, 105, 475).
pkm_base(280, ralts, psiquico, hada, 28, 25, 25, 45, 35, 40, 198).
pkm_base(281, kirlia, psiquico, hada, 38, 35, 35, 65, 55, 50, 278).
pkm_base(282, gardevoir, psiquico, hada, 68, 65, 65, 125, 115, 80, 518).
pkm_base(475, gallade, psiquico, pelea, 68, 125, 65, 65, 115, 80, 518).
pkm_base(228, houndour, siniestro, fuego, 45, 60, 30, 80, 50, 65, 330).
pkm_base(229, houndoom, siniestro, fuego, 75, 90, 50, 110, 80, 95, 500).
pkm_base(333, swablu, normal, volador, 45, 40, 60, 40, 75, 50, 310).
pkm_base(334, altaria, dragon, volador, 75, 70, 90, 70, 105, 80, 490).
pkm_base(531, audino, normal, ninguno, 103, 60, 86, 60, 86, 50, 445).
pkm_base(682, spritzee, hada, ninguno, 78, 52, 60, 63, 65, 23, 341).
pkm_base(683, aromatisse, hada, ninguno, 101, 72, 72, 99, 89, 29, 462).
pkm_base(684, swirlix, hada, ninguno, 62, 48, 66, 59, 57, 49, 341).
pkm_base(685, slurpuff, hada, ninguno, 82, 80, 86, 85, 75, 72, 480).
pkm_base(133, eevee, normal, ninguno, 55, 55, 50, 45, 65, 55, 325).
pkm_base(134, vaporeon, agua, ninguno, 130, 65, 60, 110, 95, 65, 525).
pkm_base(135, jolteon, electrico, ninguno, 65, 65, 60, 110, 95, 130, 525).
pkm_base(136, flareon, fuego, ninguno, 65, 130, 60, 95, 110, 65, 525).
pkm_base(196, espeon, psiquico, ninguno, 65, 65, 60, 130, 95, 110, 525).
pkm_base(197, umbreon, siniestro, ninguno, 95, 65, 110, 60, 130, 65, 525).
pkm_base(471, leafeon, planta, ninguno, 65, 110, 130, 60, 65, 95, 525).
pkm_base(472, glaceon, hielo, ninguno, 65, 50, 110, 130, 95, 65, 525).
pkm_base(700, sylveon, hada, ninguno, 95, 65, 65, 110, 130, 60, 525).
pkm_base(427, buneary, normal, ninguno, 55, 66, 44, 44, 56, 85, 350).
pkm_base(428, lopunny, normal, ninguno, 65, 76, 84, 54, 96, 105, 480).
pkm_base(353, shuppet, fantasma, ninguno, 44, 75, 35, 63, 33, 45, 295).
pkm_base(354, banette, fantasma, ninguno, 64, 115, 65, 83, 63, 65, 455).
pkm_base(582, vanillite, hielo, ninguno, 36, 50, 50, 65, 60, 44, 305).
pkm_base(583, vanillish, hielo, ninguno, 51, 65, 65, 80, 75, 59, 395).
pkm_base(584, vanilluxe, hielo, ninguno, 71, 95, 85, 110, 95, 79, 535).
pkm_base(332, numel, fuego, tierra, 60, 60, 40, 65, 45, 35, 305).
pkm_base(333, camerupt, fuego, tierra, 70, 100, 70, 105, 75, 40, 460).
pkm_base(449, hippopotas, tierra, ninguno, 68, 72, 78, 38, 42, 32, 330).
pkm_base(450, hippowdon, tierra, ninguno, 108, 112, 118, 68, 72, 47, 525).
pkm_base(529, drilbur, tierra, ninguno, 60, 85, 40, 30, 45, 68, 328).
pkm_base(530, excadrill, tierra, acero, 110, 135, 60, 50, 65, 88, 508).
pkm_base(551, sandile, tierra, siniestro, 50, 72, 35, 35, 35, 65, 292).
pkm_base(552, krokorok, tierra, siniestro, 60, 82, 45, 45, 45, 74, 351).
pkm_base(553, krokodile, tierra, siniestro, 95, 117, 80, 65, 70, 92, 519).
pkm_base(66, machop, pelea, ninguno, 70, 80, 50, 35, 35, 35, 305).
pkm_base(0067, machoke, pelea, ninguno, 80, 100, 70, 50, 60, 45, 405).
pkm_base(0068, machamp, pelea, ninguno, 90, 130, 80, 65, 85, 55, 505).
pkm_base(0037, vulpix, fuego, ninguno, 38, 41, 40, 50, 65, 65, 299).
pkm_base(0038, ninetales, fuego, ninguno, 73, 76, 75, 81, 100, 100, 505).
pkm_base(0072, tentacool, agua, veneno, 40, 40, 35, 50, 100, 70, 335).
pkm_base(0073, tentacruel, agua, veneno, 80, 70, 65, 80, 120, 100, 515).
pkm_base(0074, geodude, roca, tierra, 40, 80, 100, 30, 30, 20, 300).
pkm_base(0075, graveler, roca, tierra, 55, 95, 115, 45, 45, 35, 390).
pkm_base(0076, golem, roca, tierra, 80, 120, 130, 55, 65, 45, 495).
pkm_base(0077, ponyta, fuego, ninguno, 50, 85, 55, 65, 65, 90, 410).
pkm_base(0078, rapidash, fuego, ninguno, 65, 100, 70, 80, 80, 105, 500).
pkm_base(0079, slowpoke, agua, psiquico, 90, 65, 65, 40, 40, 15, 315).
pkm_base(0080, slowbro, agua, psiquico, 95, 75, 110, 100, 80, 30, 490).
pkm_base(0081, magnemite, electrico, acero, 25, 35, 70, 95, 55, 45, 325).
pkm_base(0082, magneton, electrico, acero, 50, 60, 95, 120, 70, 70, 465).
pkm_base(0083, farfetchd, normal, volador, 52, 90, 55, 58, 62, 60, 377).
pkm_base(0084, doduo, normal, volador, 35, 85, 45, 35, 35, 75, 310).
pkm_base(0085, dodrio, normal, volador, 60, 110, 70, 60, 60, 100, 460).
pkm_base(0446, lucario, lucha, acero, 70, 110, 70, 115, 70, 90, 535).
pkm_base(006, charizard, fuego, volador, 78, 84, 78, 109, 85, 100, 534).
pkm_base(005, charmeleon, fuego, ninguno, 58, 64, 58, 80, 65, 80, 405).
pkm_base(004, charmander, fuego, ninguno, 39, 52, 43, 60, 50, 65, 309).
pkm_base(095, onix, roca, tierra, 35, 45, 160, 30, 45, 70, 405).


% Fuego
ventaja(fuego, planta).
ventaja(fuego, hielo).
ventaja(fuego, bicho).
ventaja(fuego, acero).

% Agua
ventaja(agua, fuego).
ventaja(agua, roca).
ventaja(agua, tierra).

% Planta
ventaja(planta, agua).
ventaja(planta, roca).
ventaja(planta, tierra).

% Electrico
ventaja(electrico, agua).
ventaja(electrico, volador).

% Hielo
ventaja(hielo, planta).
ventaja(hielo, tierra).
ventaja(hielo, volador).
ventaja(hielo, dragon).

% Lucha
ventaja(lucha, normal).
ventaja(lucha, hielo).
ventaja(lucha, roca).
ventaja(lucha, siniestro).
ventaja(lucha, acero).

% Veneno
ventaja(veneno, planta).
ventaja(veneno, hada).

% Tierra
ventaja(tierra, fuego).
ventaja(tierra, electrico).
ventaja(tierra, veneno).
ventaja(tierra, roca).
ventaja(tierra, acero).

% Volador
ventaja(volador, planta).
ventaja(volador, lucha).
ventaja(volador, bicho).

% Psiquico
ventaja(psiquico, lucha).
ventaja(psiquico, veneno).

% Bicho
ventaja(bicho, planta).
ventaja(bicho, psiquico).
ventaja(bicho, oscuro).

% Roca
ventaja(roca, fuego).
ventaja(roca, hielo).
ventaja(roca, volador).
ventaja(roca, bicho).

% Fantasma
ventaja(fantasma, fantasma).
ventaja(fantasma, psiquico).

% Dragon
ventaja(dragon, dragon).

% Siniestro
ventaja(siniestro, psiquico).
ventaja(siniestro, fantasma).

% Acero
ventaja(acero, hielo).
ventaja(acero, roca).
ventaja(acero, hada).

% Hada
ventaja(hada, lucha).
ventaja(hada, dragon).
ventaja(hada, siniestro).

% aprende_movimiento(Especie, NombreMovimiento) 

aprende_movimiento(chikorita, tacleada).
aprende_movimiento(chikorita, latigo_de_cola).
aprende_movimiento(chikorita, follaje).
aprende_movimiento(chikorita, voz_encantadora).
aprende_movimiento(chikorita, golpe_cabeza).
aprende_movimiento(chikorita, proteccion).

aprende_movimiento(bulbasaur, placaje).
aprende_movimiento(bulbasaur, rayo_semilla).

aprende_movimiento(ivysaur, latigo_de_cola).
aprende_movimiento(ivysaur, rayo_semilla).

aprende_movimiento(venusaur, latigo_de_cola).
aprende_movimiento(venusaur, rayo_semilla).
aprende_movimiento(venusaur, tierra_viva).

aprende_movimiento(charmander, ascuas).
aprende_movimiento(charmander, brazo_fuego).
aprende_movimiento(charmander, lanzallamas).

aprende_movimiento(charmeleon, ascuas).
aprende_movimiento(charmeleon, lanzallamas).
aprende_movimiento(charmeleon, fuego_fatuo).

aprende_movimiento(charizard, lanzallamas).
aprende_movimiento(charizard, ala_azor).
aprende_movimiento(charizard, terremoto).

aprende_movimiento(numel, lanzallamas).
aprende_movimiento(numel, ataque_rapido).
aprende_movimiento(numel, rayo_fuego).
aprende_movimiento(numel, brazo_fuego).

aprende_movimiento(squirtle, pistola_agua).
aprende_movimiento(squirtle, burbuja).
aprende_movimiento(squirtle, cascada).

aprende_movimiento(wartortle, burbuja).
aprende_movimiento(wartortle, pistola_agua).
aprende_movimiento(wartortle, riflazo_agua).

aprende_movimiento(blastoise, hidrobomba).
aprende_movimiento(blastoise, cascada).
aprende_movimiento(blastoise, mordisco).

aprende_movimiento(totodile, mordisco).
aprende_movimiento(totodile, pistola_agua).
aprende_movimiento(totodile, furia).

aprende_movimiento(croconaw, mordisco).
aprende_movimiento(croconaw, triturar).
aprende_movimiento(croconaw, hidro_pulso).

aprende_movimiento(feraligatr, triturar).
aprende_movimiento(feraligatr, hidrobomba).
aprende_movimiento(feraligatr, colmillo_hielo).

aprende_movimiento(cyndaquil, ascuas).
aprende_movimiento(cyndaquil, rueda_fuego).
aprende_movimiento(cyndaquil, nitro_carga).

aprende_movimiento(quilava, ascuas).
aprende_movimiento(quilava, lanzallamas).
aprende_movimiento(quilava, rueda_fuego).

aprende_movimiento(typhlosion, lanzallamas).
aprende_movimiento(typhlosion, estallido).
aprende_movimiento(typhlosion, tierra_viva).

aprende_movimiento(caterpie, placaje).
aprende_movimiento(caterpie, laceracion).

aprende_movimiento(metapod, endurecer).

aprende_movimiento(butterfree, picadura).
aprende_movimiento(butterfree, viento_azor).
aprende_movimiento(butterfree, polucion).

aprende_movimiento(weedle, aguijon).
aprende_movimiento(weedle, laceracion).

aprende_movimiento(kakuna, endurecer).

aprende_movimiento(beedrill, aguijon).
aprende_movimiento(beedrill, picadura).
aprende_movimiento(beedrill, tornado).

aprende_movimiento(lucario, puño_incremento).
aprende_movimiento(lucario, aura_sfera).
aprende_movimiento(lucario, garra_metal).
aprende_movimiento(lucario, onda_carga).

aprende_movimiento(pidgey, placaje).
aprende_movimiento(pidgey, golpe_aereo).

aprende_movimiento(pidgeotto, golpe_aereo).
aprende_movimiento(pidgeotto, tornado).
aprende_movimiento(pidgeotto, reflejo).

aprende_movimiento(pidgeot, ala_azor).
aprende_movimiento(pidgeot, tornado).
aprende_movimiento(pidgeot, ataque_rapido).

aprende_movimiento(rattata, mordisco).
aprende_movimiento(rattata, placaje).

aprende_movimiento(raticate, mordisco).
aprende_movimiento(raticate, hipercolmillo).

aprende_movimiento(pikachu, impactrueno).
aprende_movimiento(pikachu, cola_ferrea).
aprende_movimiento(pikachu, trueno).

aprende_movimiento(raichu, rayo).
aprende_movimiento(raichu, trueno).
aprende_movimiento(raichu, ataque_rapido).

aprende_movimiento(jigglypuff, cantar).
aprende_movimiento(jigglypuff, placaje).
aprende_movimiento(jigglypuff, golpe_cuerpo).

aprende_movimiento(wigglytuff, cantar).
aprende_movimiento(wigglytuff, golpe_cuerpo).
aprende_movimiento(wigglytuff, hipercolmillo).

aprende_movimiento(ekans, mordisco).
aprende_movimiento(ekans, constriccion).

aprende_movimiento(arbok, mordisco).
aprende_movimiento(arbok, constriccion).
aprende_movimiento(arbok, acido).

aprende_movimiento(zubat, mordisco).
aprende_movimiento(zubat, tornado).
aprende_movimiento(zubat, aire_afilado).

aprende_movimiento(golbat, mordisco).
aprende_movimiento(golbat, ala_azor).
aprende_movimiento(golbat, colmillo_veneno).

aprende_movimiento(crobat, ala_azor).
aprende_movimiento(crobat, veneno_x).
aprende_movimiento(crobat, golpe_aereo).

aprende_movimiento(oddish, absorcion).
aprende_movimiento(oddish, polvo_veneno).

aprende_movimiento(gloom, rayo_solar).
aprende_movimiento(gloom, acido).

aprende_movimiento(vileplume, rayo_solar).
aprende_movimiento(vileplume, bomba_lodo).

aprende_movimiento(geodude, placaje).
aprende_movimiento(geodude, roca_afilada).

aprende_movimiento(graveler, avalancha).
aprende_movimiento(graveler, roca_afilada).

aprende_movimiento(golem, avalancha).
aprende_movimiento(golem, terremoto).

aprende_movimiento(machop, golpe_karate).
aprende_movimiento(machop, baja_patada).

aprende_movimiento(machoke, golpe_karate).
aprende_movimiento(machoke, sumision).

aprende_movimiento(machamp, sumision).
aprende_movimiento(machamp, puño_dinamico).

aprende_movimiento(gastly, tinieblas).
aprende_movimiento(gastly, bola_sombra).

aprende_movimiento(haunter, bola_sombra).
aprende_movimiento(haunter, mirada_maldita).

aprende_movimiento(gengar, bola_sombra).
aprende_movimiento(gengar, psico_rayo).

aprende_movimiento(onix, avalancha).
aprende_movimiento(onix, triturar).
aprende_movimiento(onix, terremoto).

aprende_movimiento(magikarp, salpicadura).
aprende_movimiento(magikarp, azote).

aprende_movimiento(gyarados, cascada).
aprende_movimiento(gyarados, colmillo_hielo).
aprende_movimiento(gyarados, triturar).

aprende_movimiento(eevee, ataque_rapido).
aprende_movimiento(eevee, mordisco).

aprende_movimiento(vaporeon, pistola_agua).
aprende_movimiento(vaporeon, hidrobomba).

aprende_movimiento(jolteon, impactrueno).
aprende_movimiento(jolteon, rayo).

aprende_movimiento(flareon, ascuas).
aprende_movimiento(flareon, lanzallamas).

aprende_movimiento(arcanine, lanzallamas).
aprende_movimiento(arcanine, ascuas).
aprende_movimiento(arcanine, colmillo_ignio).

aprende_movimiento(ninetales, ascuas).
aprende_movimiento(ninetales, lanzallamas).
aprende_movimiento(ninetales, fuego_fatuo).

aprende_movimiento(alakazam, psiquico).
aprende_movimiento(alakazam, confusion).
aprende_movimiento(alakazam, psico_rayo).

aprende_movimiento(rapidash, ascuas).
aprende_movimiento(rapidash, lanzallamas).
aprende_movimiento(rapidash, rueda_fuego).

aprende_movimiento(dodrio, golpe_aereo).
aprende_movimiento(dodrio, picotazo).
aprende_movimiento(dodrio, ataque_rapido).

aprende_movimiento(primeape, golpe_karate).
aprende_movimiento(primeape, baja_patada).
aprende_movimiento(primeape, puño_dinamico).

aprende_movimiento(growlithe, ascuas).
aprende_movimiento(growlithe, colmillo_ignio).
aprende_movimiento(growlithe, lanzallamas).

aprende_movimiento(cubone, hueso_palo).
aprende_movimiento(cubone, terremoto).
aprende_movimiento(cubone, golpe_cabeza).

aprende_movimiento(marowak, hueso_palo).
aprende_movimiento(marowak, huesomerang).
aprende_movimiento(marowak, terremoto).

aprende_movimiento(rhydon, avalancha).
aprende_movimiento(rhydon, roca_afilada).
aprende_movimiento(rhydon, terremoto).

aprende_movimiento(tauros, placaje).
aprende_movimiento(tauros, embestida).
aprende_movimiento(tauros, golpe_cuerpo).

aprende_movimiento(lapras, pistola_agua).
aprende_movimiento(lapras, rayo_hielo).
aprende_movimiento(lapras, hidrobomba).

aprende_movimiento(snorlax, golpe_cuerpo).
aprende_movimiento(snorlax, placaje).
aprende_movimiento(snorlax, terremoto).

aprende_movimiento(kingler, burbuja).
aprende_movimiento(kingler, martillazo).
aprende_movimiento(kingler, cascada).

aprende_movimiento(starmie, pistola_agua).
aprende_movimiento(starmie, psico_rayo).
aprende_movimiento(starmie, hidrobomba).

aprende_movimiento(jynx, beso_hielo).
aprende_movimiento(jynx, psiquico).
aprende_movimiento(jynx, rayo_hielo).

aprende_movimiento(electabuzz, impactrueno).
aprende_movimiento(electabuzz, rayo).
aprende_movimiento(electabuzz, trueno).

aprende_movimiento(magmar, ascuas).
aprende_movimiento(magmar, lanzallamas).
aprende_movimiento(magmar, bomba_fuego).

aprende_movimiento(scyther, corte).
aprende_movimiento(scyther, golpe_aereo).
aprende_movimiento(scyther, tajo_aereo).

%===========Reglas Logicas==================

tipo_secundario(Pkm, T2) :- 
    pkm_base(_, Pkm, _, T2, _, _, _, _, _, _, _), 
    T2 \= ninguno.

multiplicador_danio(_, ninguno, 1) :- !.

% Doble daño (x2)
multiplicador_danio(Atacante, Defensor, 2) :-
    super_efectivo(Atacante, Defensor).

% Mitad de daño (x0.5)
multiplicador_danio(Atacante, Defensor, 0.5) :-
    no_efectivo(Atacante, Defensor).

% Ningún daño (x0)
multiplicador_danio(Atacante, Defensor, 0) :-
    inmune(Atacante, Defensor).

% Daño normal (x1)
multiplicador_danio(Atacante, Defensor, 1) :-
    \+ super_efectivo(Atacante, Defensor),
    \+ no_efectivo(Atacante, Defensor),
    \+ inmune(Atacante, Defensor).

efectividad_ataque(TipoAtaque, PkmDefensor, MultiplicadorFinal) :-
    pkm_base(_, PkmDefensor, T1Def, T2Def, _, _, _, _, _, _, _),
    multiplicador_danio(TipoAtaque, T1Def, Mult1),
    (   T2Def = ninguno
    ->  MultiplicadorFinal = Mult1
    ;   multiplicador_danio(TipoAtaque, T2Def, Mult2),
        MultiplicadorFinal is Mult1 * Mult2
    ).

calcular_danio_base(PkmAtacante, NombreMovimiento, PkmDefensor, DanioEstimado, MultiplicadorFinal) :-
    movimiento(NombreMovimiento, TipoMov, Categoria, Potencia),
    Potencia > 0,
    pkm_base(_, PkmAtacante, Tipo1Atac, Tipo2Atac, _, AtqBase, _, AtqEspBase, _, _, _),
    pkm_base(_, PkmDefensor, _, _, _, _, DefBase, _, DefEspBase, _, _), 
    ( Categoria = fisico ->
        EstadisticaAtacante = AtqBase,
        EstadisticaDefensor = DefBase
    ; Categoria = especial ->
        EstadisticaAtacante = AtqEspBase,
        EstadisticaDefensor = DefEspBase
    ; EstadisticaAtacante = AtqBase,
      EstadisticaDefensor = DefBase
    ),
    ( TipoMov = Tipo1Atac ; TipoMov = Tipo2Atac ->
        STAB = 1.5
    ;   STAB = 1.0
    ),
    pkm_base(_, PkmDefensor, TipoDef1, TipoDef2, _, _, _, _, _, _, _),
    multiplicador_danio(TipoMov, TipoDef1, M1),
    multiplicador_danio(TipoMov, TipoDef2, M2),
    MultiplicadorFinal is M1 * M2,
    FactorNivel is 0.84,
    DanioBase is FactorNivel * (EstadisticaAtacante / EstadisticaDefensor) * Potencia + 2,
    DanioEstimado is DanioBase * STAB * MultiplicadorFinal.

hp_total(Pkm, Nivel, HP_Total) :-
    pkm_base(_, Pkm, _, _, HPBase, _, _, _, _, _, _),
    HP_Total is ((2 * HPBase) * Nivel / 100) + Nivel + 10.

porcentaje_danio(PkmAtacante, Mov, PkmDefensor, Porcentaje) :-
    calcular_danio_base(PkmAtacante, Mov, PkmDefensor, Danio, _), 
    hp_total(PkmDefensor, 100, HP_Total),
    Porcentaje is (Danio / HP_Total) * 100.

gana_turno(Pkm1, Pkm2, Ganador) :-
    pkm_base(_, Pkm1, _, _, _, _, _, _, _, Vel1, _),
    pkm_base(_, Pkm2, _, _, _, _, _, _, _, Vel2, _),
    (   Vel1 > Vel2 -> Ganador = Pkm1
    ;   Vel2 > Vel1 -> Ganador = Pkm2
    ;   Ganador = empate
    ).

max_list_of_pairs([MaxDanio-Mov | Resto], MaxDanio, Mov) :-
    \+ (member(Danio-_, Resto), Danio > MaxDanio), !.
max_list_of_pairs([_|T], MaxDanio, Mov) :-
    max_list_of_pairs(T, MaxDanio, Mov).

max_or_default([], 0, ninguno).
max_or_default(Lista, Max, Mov) :- max_list_of_pairs(Lista, Max, Mov).

movimiento_optimo(Atacante, Defensor, DanioMax, MovOpt) :-
    findall(Danio-Mov,
            calcular_danio_base(Atacante, Mov, Defensor, Danio, _),
            ListaDanios),
    max_or_default(ListaDanios, DanioMax, MovOpt).

simular_batalla(Pkm1, Pkm2, Ganador, TTK1, TTK2) :-
    movimiento_optimo(Pkm1, Pkm2, Danio1, _),
    Danio1 > 0,
    hp_total(Pkm2, 100, HP2),
    TTK1 is ceil(HP2 / Danio1),
    movimiento_optimo(Pkm2, Pkm1, Danio2, _),
    Danio2 > 0,
    hp_total(Pkm1, 100, HP1),
    TTK2 is ceil(HP1 / Danio2),
    (   TTK1 < TTK2 -> Ganador = Pkm1
    ;   TTK2 < TTK1 -> Ganador = Pkm2
    ;   Ganador = empate
    ).

% Quién tiene ventaja de tipo sobre quién
quien_gana(Pkm1, Pkm2, Respuesta) :-
    pkm_base(_, Pkm1, Tipo1P1, Tipo2P1, _, _, _, _, _, _, _),
    pkm_base(_, Pkm2, Tipo1P2, Tipo2P2, _, _, _, _, _, _, _),
    ( (ventaja(Tipo1P1, Tipo1P2); ventaja(Tipo1P1, Tipo2P2);
       (Tipo2P1 \= ninguno, (ventaja(Tipo2P1, Tipo1P2); ventaja(Tipo2P1, Tipo2P2))))
    -> format(string(Respuesta), "~w le gana a ~w.", [Pkm1, Pkm2])
    ; (ventaja(Tipo1P2, Tipo1P1); ventaja(Tipo1P2, Tipo2P1);
       (Tipo2P2 \= ninguno, (ventaja(Tipo2P2, Tipo1P1); ventaja(Tipo2P2, Tipo2P1))))
    -> format(string(Respuesta), "~w le gana a ~w.", [Pkm2, Pkm1])
    ; Respuesta = "No hay ventaja clara entre estos Pokémon." % <-- aquí reemplaza fallo por mensaje
    ).

sugerir_moveset(Pokemon, Defensor, Moveset, Danios) :-
    findall(Mov, aprende_movimiento(Pokemon, Mov), Movimientos),
    ( Movimientos = [] ->
        Moveset = [ninguno, ninguno, ninguno, ninguno],
        Danios  = [0, 0, 0, 0]
    ;   pkm_base(_, Pokemon, Tipo1, Tipo2, _, _, _, _, _, _, _),
        findall(M, (member(M, Movimientos), movimiento(M, TipoM, _, _), (TipoM = Tipo1 ; TipoM = Tipo2)), MovsSTAB),
        findall(D-M, (member(M, MovsSTAB), calcular_danio_base(Pokemon, M, Defensor, D, _)), L1),
        max_or_default(L1, DanioSTAB, MovSTAB),
        findall(D-M, (member(M, Movimientos), calcular_danio_base(Pokemon, M, Defensor, D, Mod), Mod > 1), L2),
        max_or_default(L2, DanioSE, MovSE),
        findall(D-M, (member(M, Movimientos), calcular_danio_base(Pokemon, M, Defensor, D, Mod), Mod =:= 1), L3),
        max_or_default(L3, DanioNeutral, MovNeutral),
        findall(D-M, (member(M, Movimientos), calcular_danio_base(Pokemon, M, Defensor, D, _)), L4),
        max_or_default(L4, DanioExtra, MovExtra),
        Moveset = [MovSTAB, MovSE, MovNeutral, MovExtra],
        Danios  = [DanioSTAB, DanioSE, DanioNeutral, DanioExtra]
    ).

formato_moveset(Pokemon, MovSTAB1, MovSTAB2, MovCov1, MovCov2) :-
    format("~n--- Moveset Estratégico Sugerido para ~w ---~n", [Pokemon]),
    format("Prioridad STAB (Mismo Tipo de Ataque):~n"),
    format("* 1º STAB: ~w~n", [MovSTAB1]),
    (   MovSTAB2 \= ninguno -> format("* 2º STAB: ~w~n", [MovSTAB2]) ; true ),
    format("Prioridad Cobertura (Anti-Debilidades):~n"),
    (   MovCov1 \= ninguno -> format("* Cobertura 1: ~w~n", [MovCov1]) ; true ),
    (   MovCov2 \= ninguno -> format("* Cobertura 2: ~w~n", [MovCov2]) ; true ),
    nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PALABRAS CLAVE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
palabra_descriptiva("cuentame").
palabra_descriptiva("cuéntame").
palabra_descriptiva("háblame").
palabra_descriptiva("dime").
palabra_descriptiva("info").
palabra_descriptiva("información").
palabra_descriptiva("sobre").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DESCRIBIR POKEMON
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
describir_pokemon_texto(Pkm, Respuesta) :-
    pkm_base(_, PkmAtom, Tipo1Atom, Tipo2Atom, HP, Atq, Def, AtqEsp, DefEsp, Vel, Total),
    PkmAtom = Pkm,  % aseguramos que sea el Pokémon que buscamos
    atom_string(PkmAtom, PkmStr),
    atom_string(Tipo1Atom, Tipo1),
    atom_string(Tipo2Atom, Tipo2),
    (Tipo2 == ninguno ->
        format(string(Respuesta), "~w es de tipo ~w. HP: ~w, Ataque: ~w, Defensa: ~w, Velocidad: ~w.",
               [PkmStr, Tipo1, HP, Atq, Def, Vel])
    ; format(string(Respuesta), "~w es de tipo ~w y ~w. HP: ~w, Ataque: ~w, Defensa: ~w, Velocidad: ~w.",
             [PkmStr, Tipo1, Tipo2, HP, Atq, Def, Vel])
    ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BUSCAR POKEMON
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
buscar_pokemon(Palabras, Pkm) :-
    maplist(string_lower, Palabras, PalabrasLower),
    pkm_base(_, PkmAtom, _, _, _, _, _, _, _, _, _),
    atom_string(PkmAtom, PkmStr),
    string_lower(PkmStr, LowerPkm),
    member(LowerPalabra, PalabrasLower),
    sub_string(LowerPalabra, _, _, _, LowerPkm),  % permite coincidencia parcial
    Pkm = PkmAtom, !.

% Buscar Pokémon ignorando mayúsculas/minúsculas
buscar_pokemon_insensible(Input, Pkm) :-
    string_lower(Input, InputLower),
    pkm_base(_, PkmAtom, _, _, _, _, _, _, _, _, _),
    atom_string(PkmAtom, PkmStr),
    string_lower(PkmStr, PkmLower),
    PkmLower = InputLower,
    Pkm = PkmAtom.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ANALIZADOR DE LENGUAJE NATURAL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
analizar(Input, Respuesta) :-
    string_lower(Input, Lower),
    split_string(Lower, " ", ".,?!", Palabras),
    responder(Palabras, Lower, Respuesta).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESPONDER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Responder "VS"
responder(Palabras, _, Respuesta) :-
    append(Pkm1List, [VsWord|Pkm2List], Palabras),
    memberchk(VsWord, ["vs","VS","Vs"]),
    atomic_list_concat(Pkm1List, ' ', Pkm1Raw),
    atomic_list_concat(Pkm2List, ' ', Pkm2Raw),
    
    ( buscar_pokemon_insensible(Pkm1Raw, Pkm1Atom)
    -> true
    ; format(string(Respuesta), "No encontré al Pokémon ~w.", [Pkm1Raw]), !
    ),
    ( buscar_pokemon_insensible(Pkm2Raw, Pkm2Atom)
    -> true
    ; format(string(Respuesta), "No encontré al Pokémon ~w.", [Pkm2Raw]), !
    ),
    
    ( quien_gana(Pkm1Atom, Pkm2Atom, Respuesta)
    -> true
    ; Respuesta = "No pude determinar quién gana entre esos Pokémon."
    ),
    !.
responder(Palabras, _, Respuesta) :-
    % Preguntar HP
    member("hp", Palabras),
    buscar_pokemon(Palabras, Pkm),
    hp_total(Pkm, 100, HP),
    format(string(Resp), "~w tiene ~w puntos de HP a nivel 100.", [Pkm, HP]),
    Respuesta = Resp, !.

% capitalize tal cual:
capitalize(In, Out) :-
    atom_chars(In, [FirstChar|RestChars]),
    char_upper(FirstChar, FirstUpper),
    maplist(char_lower, RestChars, RestLower),
    atom_chars(Out, [FirstUpper|RestLower]).

responder(Palabras, Lower, Respuesta) :-
    % Preguntar tipo
    (member("tipo", Palabras); member("clase", Palabras)),
    buscar_pokemon(Palabras, Pkm),
    pkm_base(_, Pkm, T1, T2, _, _, _, _, _, _, _),
    (T2 == ninguno ->
        format(string(Resp), "~w es de tipo ~w.", [Pkm, T1])
    ; format(string(Resp), "~w es de tipo ~w y ~w.", [Pkm, T1, T2])
    ),
    Respuesta = Resp, !.

responder(Palabras, _, Respuesta) :-
    (member("movimientos", Palabras); member("ataques", Palabras)),
    buscar_pokemon(Palabras, Pkm),
    findall(Mov, aprende_movimiento(Pkm, Mov), ListaMovs),
    ( ListaMovs = [] ->
        format(string(Resp), "~w no tiene movimientos registrados.", [Pkm])
    ; format(string(Resp), "~w aprende los siguientes movimientos: ~w.", [Pkm, ListaMovs])
    ),
    Respuesta = Resp, !.

responder(Palabras, _, Respuesta) :-
    (member("atributos", Palabras); member("descripcion", Palabras); member("sobre", Palabras)),
    ( buscar_pokemon(Palabras, Pkm) ->
        describir_pokemon_texto(Pkm, Respuesta)
    ; Respuesta = "¿De qué Pokémon quieres la descripción?" ),
    !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "hola"),
    Respuesta = "¡Hola entrenador! ¿Qué quieres saber sobre Pokémon?", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "ok"),
    Respuesta = "¿Alguna otra cosa que desees saber?", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "tu proposito"),
    Respuesta = "Hola, mi nombre es Rotomdex, mi propósito es ayudarte a saber todo acerca de Pokémon.", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "dime sobre tus creadores"),
    Respuesta = "Fui creado por 4 inteligentes y creativos desarrolladores.", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "nada"),
    Respuesta = "Nada? esperaba a que preguntaras algo :(", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "si"),
    Respuesta = "Excelente, continuemos con la conversación.", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "no"),
    Respuesta = "Entiendo tu negación a la conversación... :(", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "como estas"),
    Respuesta = "Estoy emocionado por conversar contigo :D", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "adios"),
    Respuesta = "Tan pronto te vas?? Espero volver a conversar de nuevo :D", !.

responder(_, Lower, Respuesta) :-
    sub_string(Lower, _, _, _, "di algo"),
    Respuesta = "algo", !.

% MENSAJE FINAL SI NO ENTIENDE
responder(_, _, "No entendí la pregunta, intenta de nuevo.").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MAIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
main :-
    current_prolog_flag(argv, Argv),
    atomic_list_concat(Argv, ' ', Msg),
    analizar(Msg, Respuesta),
    writeln(Respuesta),
    halt.