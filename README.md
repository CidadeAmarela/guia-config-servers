# guia-config-servers
Convenções e guia a configuração dos serviços (*servers*).

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
Os scripts resumem e facilitam o refazer do passo-a-passo descrito... e com `_check.sh` compare-se com o feito anteriormente.

```
sh step1.sh
# se tudo ok...
sh step1_check.sh | diff step1_check.dump -
```
------

# Outros elementos 
* [Termos de uso dos e-mails](https://github.com/CidadeAmarela/guia-config-servers/wiki/Termos-de-uso-dos-emails)
* ...

------

![[CC-BY-SA v3.0](https://creativecommons.org/licenses/by-sa/3.0/deed.pt_BR)](https://upload.wikimedia.org/wikipedia/commons/a/a9/CC-BY-SA.png)
