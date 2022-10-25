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

alter table TB_CLIENTE 
       add nr_cartao_credito number(10,0) not null

    
alter table TB_CLIENTE 
       add nr_codigo_seguranca number(10,0) not null
 
    
alter table TB_CLIENTE 
       add dt_validade_cartao timestamp not null
 
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

alter table TB_NOTA_FISCAL 
       add vl_nota_fiscal number(10,2) not null

alter table TB_NOTA_FISCAL 
       add cd_locacao number(10,0)
create sequence SQ_TB_CARRO start with 1 increment by  1
create sequence SQ_TB_LOCACAO start with 1 increment by  1
create sequence SQ_TB_MANUTENCAO start with 1 increment by  1

alter table TB_CARRO_LOCACAO 
       add constraint FKgngqhcnckggmr0sujr32rceba 
       foreign key (cd_locacao) 
       references TB_LOCACAO
 
alter table TB_CARRO_LOCACAO 
       add constraint FKa5g6vxid3gncqcldaoogfonnf 
       foreign key (cd_carro) 
       references TB_CARRO
 
    
alter table TB_LOCACAO 
       add constraint FK3520f051bqhrl4u3e57esiwsy 
       foreign key (cd_cliente) 
       references TB_CLIENTE

    
alter table TB_NOTA_FISCAL 
       add constraint FKa8j1ckqvyb0rdwq663bimgqtb 
       foreign key (cd_locacao) 
       references TB_LOCACAO
       
insert into
        TB_CLIENTE
        (nr_cartao_credito, nr_codigo_seguranca, nr_cpf, dt_validade_cartao, nm_cliente, cd_cliente) 
    values
        (?, ?, ?, ?, ?, ?)

insert into
        TB_NOTA_FISCAL
        (cd_verificacao, dt_emissao, cd_locacao, nr_nota, vl_imposto, vl_nota_fiscal, cd_nota_fiscal) 
    values
        (?, ?, ?, ?, ?, ?, ?)
