{{ 
  config(
    schema='br_inep_saeb',
    materialized='table',
     partition_by={
      "field": "ano",
      "data_type": "int64",
      "range": {
        "start": 1995,
        "end": 2023,
        "interval": 1}
    },
    cluster_by = ["sigla_uf"],
    labels = {'tema': 'educacao'})
}} 

SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(sigla_uf AS STRING) sigla_uf,
SAFE_CAST(id_regiao AS STRING) id_regiao,
SAFE_CAST(id_municipio AS STRING) id_municipio,
SAFE_CAST(area AS STRING) area,
SAFE_CAST(mascara AS STRING) mascara,
SAFE_CAST(ano_mascara AS INT64) ano_mascara,
SAFE_CAST(id_escola AS STRING) id_escola,
SAFE_CAST(rede AS STRING) rede,
SAFE_CAST(escola_publica AS STRING) escola_publica,
SAFE_CAST(localizacao AS STRING) localizacao,
SAFE_CAST(id_turma AS STRING) id_turma,
SAFE_CAST(turno AS STRING) turno,
SAFE_CAST(serie AS INT64) serie,
SAFE_CAST(id_aluno AS STRING) id_aluno,
SAFE_CAST(situacao_censo AS STRING) situacao_censo,
SAFE_CAST(disciplina AS STRING) disciplina,
SAFE_CAST(preenchimento_caderno AS INT64) preenchimento_caderno,
SAFE_CAST(presenca AS INT64) presenca,
SAFE_CAST(caderno AS STRING) caderno,
SAFE_CAST(bloco_1 AS STRING) bloco_1,
SAFE_CAST(bloco_2 AS STRING) bloco_2,
SAFE_CAST(bloco_3 AS STRING) bloco_3,
SAFE_CAST(respostas_bloco_1 AS STRING) respostas_bloco_1,
SAFE_CAST(respostas_bloco_2 AS STRING) respostas_bloco_2,
SAFE_CAST(respostas_bloco_3 AS STRING) respostas_bloco_3,
SAFE_CAST(gabarito_bloco_1 AS STRING) gabarito_bloco_1,
SAFE_CAST(gabarito_bloco_2 AS STRING) gabarito_bloco_2,
SAFE_CAST(gabarito_bloco_3 AS STRING) gabarito_bloco_3,
SAFE_CAST(indicador_proficiencia AS INT64) indicador_proficiencia,
SAFE_CAST(indicador_prova_brasil AS INT64) indicador_prova_brasil,
SAFE_CAST(amostra AS STRING) amostra,
SAFE_CAST(estrato AS STRING) estrato,
SAFE_CAST(peso_escola AS FLOAT64) peso_escola,
SAFE_CAST(peso_turma AS FLOAT64) peso_turma,
SAFE_CAST(peso_aluno_turma AS FLOAT64) peso_aluno_turma,
SAFE_CAST(peso_aluno AS FLOAT64) peso_aluno,
SAFE_CAST(proficiencia AS FLOAT64) proficiencia,
SAFE_CAST(erro_padrao AS FLOAT64) erro_padrao,
SAFE_CAST(proficiencia_saeb AS FLOAT64) proficiencia_saeb,
SAFE_CAST(erro_padrao_saeb AS FLOAT64) erro_padrao_saeb,
SAFE_CAST(desempenho_aluno AS FLOAT64) desempenho_aluno,
SAFE_CAST(preenchimento_questionario AS INT64) preenchimento_questionario,
SAFE_CAST(sexo AS STRING) sexo,
SAFE_CAST(raca_cor AS STRING) raca_cor,
SAFE_CAST(mes_nascimento AS INT64) mes_nascimento,
SAFE_CAST(ano_nascimento AS INT64) ano_nascimento,
SAFE_CAST(idade AS STRING) idade,
SAFE_CAST(faixa_etaria AS STRING) faixa_etaria,
SAFE_CAST(aniversariante AS STRING) aniversariante,
SAFE_CAST(possui_necessidade_especial AS STRING) possui_necessidade_especial,
SAFE_CAST(com_quem_mora AS STRING) com_quem_mora,
SAFE_CAST(mora_mae AS STRING) mora_mae,
SAFE_CAST(mora_pai AS STRING) mora_pai,
SAFE_CAST(mora_irmaos AS STRING) mora_irmaos,
SAFE_CAST(mora_avos AS STRING) mora_avos,
SAFE_CAST(mora_outros_parentes AS STRING) mora_outros_parentes,
SAFE_CAST(mora_amigos AS STRING) mora_amigos,
SAFE_CAST(idioma_domicilio AS STRING) idioma_domicilio,
SAFE_CAST(quantidade_pessoas_domicilio AS STRING) quantidade_pessoas_domicilio,
SAFE_CAST(quantidade_pessoas_despesas_domicilio AS STRING) quantidade_pessoas_despesas_domicilio,
SAFE_CAST(indicador_inse AS INT64) indicador_inse,
SAFE_CAST(inse AS FLOAT64) inse,
SAFE_CAST(nivel_inse AS STRING) nivel_inse,
SAFE_CAST(peso_inse AS FLOAT64) peso_inse,
SAFE_CAST(possui_trabalho AS STRING) possui_trabalho,
SAFE_CAST(turma_bolsa_escola AS STRING) turma_bolsa_escola,
SAFE_CAST(aluno_bolsa_escola AS STRING) aluno_bolsa_escola,
SAFE_CAST(possui_moradia_rua_urbanizada AS STRING) possui_moradia_rua_urbanizada,
SAFE_CAST(possui_agua_encanada AS STRING) possui_agua_encanada,
SAFE_CAST(possui_eletrecidade AS STRING) possui_eletrecidade,
SAFE_CAST(possui_eletrodomestico_sem_eletricidade AS STRING) possui_eletrodomestico_sem_eletricidade,
SAFE_CAST(possui_casa_dormitorio AS STRING) possui_casa_dormitorio,
SAFE_CAST(possui_casa_quarto_individual AS STRING) possui_casa_quarto_individual,
SAFE_CAST(possui_casa_cozinha AS STRING) possui_casa_cozinha,
SAFE_CAST(possui_casa_banheiro AS STRING) possui_casa_banheiro,
SAFE_CAST(possui_casa_sala AS STRING) possui_casa_sala,
SAFE_CAST(possui_casa_garagem AS STRING) possui_casa_garagem,
SAFE_CAST(possui_automovel AS STRING) possui_automovel,
SAFE_CAST(possui_geladeira AS STRING) possui_geladeira,
SAFE_CAST(possui_geladeira_freezer AS STRING) possui_geladeira_freezer,
SAFE_CAST(possui_freezer AS STRING) possui_freezer,
SAFE_CAST(possui_microondas AS STRING) possui_microondas,
SAFE_CAST(possui_maquina_lavar_roupa AS STRING) possui_maquina_lavar_roupa,
SAFE_CAST(possui_aspirador_po AS STRING) possui_aspirador_po,
SAFE_CAST(possui_radio AS STRING) possui_radio,
SAFE_CAST(possui_tv AS STRING) possui_tv,
SAFE_CAST(possui_tv_assinatura AS STRING) possui_tv_assinatura,
SAFE_CAST(possui_videocassete_dvd AS STRING) possui_videocassete_dvd,
SAFE_CAST(possui_internet AS STRING) possui_internet,
SAFE_CAST(possui_computador AS STRING) possui_computador,
SAFE_CAST(possui_computador_sem_internet AS STRING) possui_computador_sem_internet,
SAFE_CAST(possui_tablet AS STRING) possui_tablet,
SAFE_CAST(possui_telefone AS STRING) possui_telefone,
SAFE_CAST(possui_celular AS STRING) possui_celular,
SAFE_CAST(possui_escrivaninha AS STRING) possui_escrivaninha,
SAFE_CAST(possui_enciclopedia AS STRING) possui_enciclopedia,
SAFE_CAST(possui_atlas AS STRING) possui_atlas,
SAFE_CAST(possui_dicionario AS STRING) possui_dicionario,
SAFE_CAST(possui_calculadora AS STRING) possui_calculadora,
SAFE_CAST(possui_empregada_domestica AS STRING) possui_empregada_domestica,
SAFE_CAST(possui_empregada_domestica_cinco_dias AS STRING) possui_empregada_domestica_cinco_dias,
SAFE_CAST(escolaridade_mae AS STRING) escolaridade_mae,
SAFE_CAST(mae_sabe_ler_escrever AS STRING) mae_sabe_ler_escrever,
SAFE_CAST(mae_le AS STRING) mae_le,
SAFE_CAST(ocupacao_mae AS STRING) ocupacao_mae,
SAFE_CAST(escolaridade_pai AS STRING) escolaridade_pai,
SAFE_CAST(pai_sabe_ler_escrever AS STRING) pai_sabe_ler_escrever,
SAFE_CAST(pai_le AS STRING) pai_le,
SAFE_CAST(ocupacao_pai AS STRING) ocupacao_pai,
SAFE_CAST(pessoa_acompanha_vida_escolar AS STRING) pessoa_acompanha_vida_escolar,
SAFE_CAST(escolaridade_pessoa AS STRING) escolaridade_pessoa,
SAFE_CAST(responsaveis_conhecem_diretor AS STRING) responsaveis_conhecem_diretor,
SAFE_CAST(responsaveis_conhecem_professor AS STRING) responsaveis_conhecem_professor,
SAFE_CAST(responsaveis_conhecem_amigo AS STRING) responsaveis_conhecem_amigo,
SAFE_CAST(responsaveis_conhecem_responsavel_amigo AS STRING) responsaveis_conhecem_responsavel_amigo,
SAFE_CAST(responsaveis_conversam_professor_diretor AS STRING) responsaveis_conversam_professor_diretor,
SAFE_CAST(responsaveis_almocam_jantam_contigo AS STRING) responsaveis_almocam_jantam_contigo,
SAFE_CAST(responsaveis_ouvem_musica_contigo AS STRING) responsaveis_ouvem_musica_contigo,
SAFE_CAST(responsaveis_conversam_livros_contigo AS STRING) responsaveis_conversam_livros_contigo,
SAFE_CAST(responsaveis_conversam_filmes_contigo AS STRING) responsaveis_conversam_filmes_contigo,
SAFE_CAST(responsaveis_conversam_programas_tv_contigo AS STRING) responsaveis_conversam_programas_tv_contigo,
SAFE_CAST(responsaveis_conversam_amigos AS STRING) responsaveis_conversam_amigos,
SAFE_CAST(responsaveis_conversam_responsaveis_amigo AS STRING) responsaveis_conversam_responsaveis_amigo,
SAFE_CAST(responsaveis_conversam_outros_assuntos_contigo AS STRING) responsaveis_conversam_outros_assuntos_contigo,
SAFE_CAST(responsaveis_conversam_escola AS STRING) responsaveis_conversam_escola,
SAFE_CAST(responsaveis_conversam_boletim AS STRING) responsaveis_conversam_boletim,
SAFE_CAST(responsaveis_conversam_comportamento AS STRING) responsaveis_conversam_comportamento,
SAFE_CAST(responsaveis_leem AS STRING) responsaveis_leem,
SAFE_CAST(responsaveis_cobram_realizacao_licao_casa AS STRING) responsaveis_cobram_realizacao_licao_casa,
SAFE_CAST(responsaveis_ajudam_realizacao_licao_casa AS STRING) responsaveis_ajudam_realizacao_licao_casa,
SAFE_CAST(responsaveis_incentivam_realizacao_licao_casa AS STRING) responsaveis_incentivam_realizacao_licao_casa,
SAFE_CAST(responsaveis_incentivam_estudos AS STRING) responsaveis_incentivam_estudos,
SAFE_CAST(responsaveis_incentivam_leitura AS STRING) responsaveis_incentivam_leitura,
SAFE_CAST(responsaveis_incentivam_comparecer_aulas AS STRING) responsaveis_incentivam_comparecer_aulas,
SAFE_CAST(responsaveis_incentivam_pontualidade AS STRING) responsaveis_incentivam_pontualidade,
SAFE_CAST(responsaveis_incentivam_boas_notas AS STRING) responsaveis_incentivam_boas_notas,
SAFE_CAST(responsaveis_comparecem_reuniao_pais AS STRING) responsaveis_comparecem_reuniao_pais,
SAFE_CAST(responsaveis_participam_festas_escola AS STRING) responsaveis_participam_festas_escola,
SAFE_CAST(responsaveis_participam_trabalho_voluntario AS STRING) responsaveis_participam_trabalho_voluntario,
SAFE_CAST(tempo_chegada_escola AS STRING) tempo_chegada_escola,
SAFE_CAST(forma_chegada_escola AS STRING) forma_chegada_escola,
SAFE_CAST(transporte_escolar AS STRING) transporte_escolar,
SAFE_CAST(inicio_estudos AS STRING) inicio_estudos,
SAFE_CAST(quantos_anos_primeiro_grau AS STRING) quantos_anos_primeiro_grau,
SAFE_CAST(idade_entrada_escola AS STRING) idade_entrada_escola,
SAFE_CAST(quantidade_mudancas_escola AS STRING) quantidade_mudancas_escola,
SAFE_CAST(rede_ef AS STRING) rede_ef,
SAFE_CAST(estudos_mesma_escola AS STRING) estudos_mesma_escola,
SAFE_CAST(reprovacao AS STRING) reprovacao,
SAFE_CAST(evasao_escolar_ate_final_ano AS STRING) evasao_escolar_ate_final_ano,
SAFE_CAST(evasao_escolar_temporaria AS STRING) evasao_escolar_temporaria,
SAFE_CAST(motivo_evasao_escolar AS STRING) motivo_evasao_escolar,
SAFE_CAST(faltas_aula AS STRING) faltas_aula,
SAFE_CAST(motivo_faltas AS STRING) motivo_faltas,
SAFE_CAST(tempo_lazer AS STRING) tempo_lazer,
SAFE_CAST(tipo_programacao_tv AS STRING) tipo_programacao_tv,
SAFE_CAST(tempo_cursos AS STRING) tempo_cursos,
SAFE_CAST(tempo_trabalho_domestico AS STRING) tempo_trabalho_domestico,
SAFE_CAST(tempo_estudos AS STRING) tempo_estudos,
SAFE_CAST(gosta_leitura AS STRING) gosta_leitura,
SAFE_CAST(tipo_leitura AS STRING) tipo_leitura,
SAFE_CAST(quantidade_livros AS STRING) quantidade_livros,
SAFE_CAST(recebe_jornais AS STRING) recebe_jornais,
SAFE_CAST(recebe_revistas AS STRING) recebe_revistas,
SAFE_CAST(leitura_jornais AS STRING) leitura_jornais,
SAFE_CAST(leitura_noticias AS STRING) leitura_noticias,
SAFE_CAST(leitura_livros_geral AS STRING) leitura_livros_geral,
SAFE_CAST(leitura_literatura AS STRING) leitura_literatura,
SAFE_CAST(leitura_literatura_infantojuvenil AS STRING) leitura_literatura_infantojuvenil,
SAFE_CAST(leitura_historia_quadrinhos AS STRING) leitura_historia_quadrinhos,
SAFE_CAST(leitura_revistas_tematicas AS STRING) leitura_revistas_tematicas,
SAFE_CAST(leitura_revista_comportamento AS STRING) leitura_revista_comportamento,
SAFE_CAST(leitura_revistas_geral AS STRING) leitura_revistas_geral,
SAFE_CAST(leitura_internet AS STRING) leitura_internet,
SAFE_CAST(leitura_outros_materiais AS STRING) leitura_outros_materiais,
SAFE_CAST(frequenta_biblioteca AS STRING) frequenta_biblioteca,
SAFE_CAST(frequenta_cinema AS STRING) frequenta_cinema,
SAFE_CAST(frequenta_museu AS STRING) frequenta_museu,
SAFE_CAST(frequenta_espetaculo_exposicao AS STRING) frequenta_espetaculo_exposicao,
SAFE_CAST(frequenta_teatro AS STRING) frequenta_teatro,
SAFE_CAST(frequenta_show AS STRING) frequenta_show,
SAFE_CAST(frequenta_festas_comunidade AS STRING) frequenta_festas_comunidade,
SAFE_CAST(participa_atividades_esporte AS STRING) participa_atividades_esporte,
SAFE_CAST(participa_atividades_artisticas AS STRING) participa_atividades_artisticas,
SAFE_CAST(participa_trabalho_solidario AS STRING) participa_trabalho_solidario,
SAFE_CAST(participa_reforco_escolar AS STRING) participa_reforco_escolar,
SAFE_CAST(participa_excursao_acampamento AS STRING) participa_excursao_acampamento,
SAFE_CAST(participa_festas AS STRING) participa_festas,
SAFE_CAST(curso_atividades_artisticas AS STRING) curso_atividades_artisticas,
SAFE_CAST(curso_reforco_escolar AS STRING) curso_reforco_escolar,
SAFE_CAST(curso_idioma_externo AS STRING) curso_idioma_externo,
SAFE_CAST(curso_informatica AS STRING) curso_informatica,
SAFE_CAST(quando_nao_entende_materia AS STRING) quando_nao_entende_materia,
SAFE_CAST(gosta_estudar_disciplina AS STRING) gosta_estudar_disciplina,
SAFE_CAST(entendimento_ensino AS STRING) entendimento_ensino,
SAFE_CAST(professor_disciplina AS STRING) professor_disciplina,
SAFE_CAST(faz_licao_casa AS STRING) faz_licao_casa,
SAFE_CAST(tempo_licao_casa AS STRING) tempo_licao_casa,
SAFE_CAST(fez_redacao AS STRING) fez_redacao,
SAFE_CAST(professor_leitura_livros_licao_casa AS STRING) professor_leitura_livros_licao_casa,
SAFE_CAST(correcao_licao_casa AS STRING) correcao_licao_casa,
SAFE_CAST(correcao_licao_casa_alunos AS STRING) correcao_licao_casa_alunos,
SAFE_CAST(consulta_jornais_revistas_licao_casa AS STRING) consulta_jornais_revistas_licao_casa,
SAFE_CAST(estuda_fazendo_licao_casa AS STRING) estuda_fazendo_licao_casa,
SAFE_CAST(estuda_fazendo_resumos AS STRING) estuda_fazendo_resumos,
SAFE_CAST(estuda_lendo_relendo_livros AS STRING) estuda_lendo_relendo_livros,
SAFE_CAST(estuda_refazendo_exercicios AS STRING) estuda_refazendo_exercicios,
SAFE_CAST(estuda_fazendo_anotacoes AS STRING) estuda_fazendo_anotacoes,
SAFE_CAST(estuda_lendo_anotacoes AS STRING) estuda_lendo_anotacoes,
SAFE_CAST(estuda_somente_assistindo_aulas AS STRING) estuda_somente_assistindo_aulas,
SAFE_CAST(estuda_fora_sala_aula AS STRING) estuda_fora_sala_aula,
SAFE_CAST(utiliza_computador_licao_casa AS STRING) utiliza_computador_licao_casa,
SAFE_CAST(utiliza_computador AS STRING) utiliza_computador,
SAFE_CAST(utiliza_computador_escola AS STRING) utiliza_computador_escola,
SAFE_CAST(utiliza_biblioteca_escola AS STRING) utiliza_biblioteca_escola,
SAFE_CAST(utiliza_biblioteca_externa AS STRING) utiliza_biblioteca_externa,
SAFE_CAST(existe_lugar_calmo_estudos AS STRING) existe_lugar_calmo_estudos,
SAFE_CAST(comparacao_colegas_disciplina AS STRING) comparacao_colegas_disciplina,
SAFE_CAST(boas_notas_disciplina AS STRING) boas_notas_disciplina,
SAFE_CAST(professor_importa_voce_diz AS STRING) professor_importa_voce_diz,
SAFE_CAST(professor_conversa_avaliacao AS STRING) professor_conversa_avaliacao,
SAFE_CAST(professor_elogia_merecimento AS STRING) professor_elogia_merecimento,
SAFE_CAST(professor_esforca_aprendizado AS STRING) professor_esforca_aprendizado,
SAFE_CAST(professor_trata_carinho AS STRING) professor_trata_carinho,
SAFE_CAST(turma_exclui AS STRING) turma_exclui,
SAFE_CAST(alunos_desordeiros AS STRING) alunos_desordeiros,
SAFE_CAST(alunos_atentos AS STRING) alunos_atentos,
SAFE_CAST(alunos_obedientes AS STRING) alunos_obedientes,
SAFE_CAST(possui_amigos_sala AS STRING) possui_amigos_sala,
SAFE_CAST(motivo_estar_escola AS STRING) motivo_estar_escola,
SAFE_CAST(utiliza_aprendizado_diariamente AS STRING) utiliza_aprendizado_diariamente,
SAFE_CAST(pandemia_equipamento_ensino_remoto AS STRING) pandemia_equipamento_ensino_remoto,
SAFE_CAST(pandemia_internet_ensino_remoto AS STRING) pandemia_internet_ensino_remoto,
SAFE_CAST(pandemia_facilidade_programas AS STRING) pandemia_facilidade_programas,
SAFE_CAST(pandemia_recebeu_material AS STRING) pandemia_recebeu_material,
SAFE_CAST(pandemia_auxilio_professor AS STRING) pandemia_auxilio_professor,
SAFE_CAST(pandemia_compreensao_conteudo AS STRING) pandemia_compreensao_conteudo,
SAFE_CAST(pandemia_ambiente_tranquilo AS STRING) pandemia_ambiente_tranquilo,
SAFE_CAST(pandemia_apoio_familia AS STRING) pandemia_apoio_familia,
SAFE_CAST(pandemia_apoio_colegas AS STRING) pandemia_apoio_colegas,
SAFE_CAST(pretensao_futura AS STRING) pretensao_futura,
SAFE_CAST(opiniao_teste AS STRING) opiniao_teste
FROM basedosdados-staging.br_inep_saeb_staging.aluno_ef_5ano AS t