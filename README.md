# guia-config-servers
Convenções e guia a configuração dos serviços online (*servers*) oferecidos pelo Condomínio CidadeAmarela.

Este guia tem como objetivo:

 * registrar **decisões técnicas e de infraestrutura da CidadeAmarela**.
 * estabelecer instruções e **referencial para a auditoria dos serviços**.
 * servir de **Termo de Referência** em contratos da CidadeAmarela.
 * garantir a **transparência e a participação** coletiva dos grupos de interesse envolvidos.

Neste `git` são mantidos apenas _documentos públicos oficiais_ da CidadeAmarela. Alguns deles são ou serão complementados por _documentos restritos_ (classificados como "restrito" ou "sigiloso").

## Organização deste projeto ##

Ilustrações originais são armazenadas na pasta assets; tabelas e demais *datasets*, formatos CSV ou JSON, na pasta [data](data) e descritos no arquivo [padrão *datapackage.json*](http://frictionlessdata.io/guides/data-package/) na raiz; conteúdos, por hora, na [Wiki](https://github.com/CidadeAmarela/guia-config-servers/wiki).

Para ajudar ou acompanhar demandas, usar [*issues*](https://github.com/CidadeAmarela/guia-config-servers/issues).


# ESPECIFICAÇÕES #

* **SPEC1**: [Requisitos gerais](SPEC1_requisitosGerais.md)

* **SPEC2**: [Instalação e configuração](SPEC2_instalConfig.md)

* **SPEC3**: Backups

* **SPEC4**: Testes de restauro dos backups

* **SPEC5**: Referências normativas e de apoio

-----

# SCRIPTS E TESTES
Os [scripts](scripts) resumem e facilitam o refazer do passo-a-passo descrito... e com `_check.sh` compare-se com o feito anteriormente.

```
sh step1.sh
# se tudo ok...
sh step1_check.sh | diff step1_check.dump -
```
Exemplo: quando rodamos no *shell* o [step3.sh](scripts/step3.sh), ele roda tudo o que é necessário para o "[step-3](SPEC2_instalConfig.md#step3)"; quando rodamos o [step3_check.sh](scripts/step3_check.sh), ele roda as verificações e mensagens que atestam que está tudo no lugar e rodando... Isso fica gravado em [dumps/step3.txt](dumps/step3.txt) como referência (o dia que homologamos num  *Droplet de teste*): assim quando rodar `sh scripts/step3_check.sh | diff dumps/step3.txt -` o estado do *Droplet corrente* será comparado com o estado homologado, se tudo ok não retorna nenhuma diferença.

------

# Outros elementos 
* [Termos de uso dos e-mails](https://github.com/CidadeAmarela/guia-config-servers/wiki/Termos-de-uso-dos-emails)
* ...

------

![[CC-BY-SA v3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.pt_BR)](https://upload.wikimedia.org/wikipedia/commons/a/a9/CC-BY-SA.png)
