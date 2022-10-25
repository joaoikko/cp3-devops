create table TB_CARRO (
       cd_carro number(10,0) not null,
        mc_marca varchar2(20 char) not null,
        nm_carro varchar2(20 char) not null,
        ds_placa varchar2(8 char) not null,
        st_carro varchar2(20 char) not null,
        vl_locacao number(10,2) not null,
        primary key (cd_carro)
    )

create table TB_CARRO_LOCACAO (
       cd_carro number(10,0) not null,
        cd_locacao number(10,0) not null
    )
    

create table TB_LOCACAO (
       cd_locacao number(10,0) not null,
        dt_locacao timestamp not null,
        st_locacao varchar2(20 char) not null,
        vl_total number(10,2) not null,
        cd_cliente number(10,0),
        primary key (cd_locacao)
    )
    
create table TB_MANUTENCAO (
       cd_manutencao number(10,0) not null,
        st_manutencao varchar2(20 char) not null,
        vl_total number(10,2) not null,
        primary key (cd_manutencao)
    )