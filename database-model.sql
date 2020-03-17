CREATE TABLE 'sistema' (
    'cod' int,
    'nome' varchar(30),
    'velOrbita' decimal,
    '&codGalaxia' int
);

CREATE TABLE 'galaxia' (
    'cod' int,
    'nome' varchar(30),
    'velocidade' decimal,
    'idade' int,
    'tipo' int,
    '[nivelDist]' decimal,
    '[diametro]' decimal,
    '[tamBojo]' decimal
);
CHECK (tipo=1 AND nivelDist != NULL AND diametro = NULL AND tamBojo = NULL);
CHECK (tipo=2 AND nivelDist = NULL AND diametro != NULL AND tamBojo = NULL);
CHECK (tipo=3 AND nivelDist = NULL AND diametro = NULL AND tamBojo != NULL);

CREATE TABLE 'satelite' (
    'cod' int,
    'nome' varchar(30),
    'tipo' int,
    '[idade]' int,
    '[diametro]' decimal,
    '[massa]' decimal,
    '[proposito]' varchar(100),
    '[dataLanca]' date,
    '[funciona]' BOOL,
    '&codSerVivo' int
);
CHECK (tipo=1 AND proposito = NULL AND dataLanca = NULL AND funciona = NULL);
CHECK (tipo=2 AND idade = NULL AND ddiametro = NULL AND massa = NULL);

CREATE TABLE 'nebulosa' (
    'cod' int,
    'nome' varchar(30),
    'tamanho' decimal,
    '&nomeGalaxia' varchar(30) 
);

CREATE TABLE 'estrela' (
    '#nome' varchar(30),
    '&codGalaxia' int,
    '&codNebulosa' int,
    '&codgas' int,
    'diametro' decimal,
    'tipo' int,
    '[velRotacao]' decimal,
    '[&codSistema]' int
);
CHECK (tipo=1) AND velRotacao NOT NULL;
CHECK (tipo=1 );

CREATE TABLE 'gas' (
    'int' <type>,
    'varcahr(30)' <type>,
    'varchar(50)' <type>,
    KEY 'cod' ('int'),
    KEY 'nome' ('varcahr(30)'),
    KEY 'composicao' ('varchar(50)')
);

CREATE TABLE 'serVivo' (
    'cod' int,
    'nome' varchar(30)
);

CREATE TABLE 'anel' (
    'cod' int,
    'nome' varchar(30),
    'quantidade' int,
    '&codPlaneta' int
);

CREATE TABLE 'vidaPlaneta' (
    '#&codPlaneta' int,
    '#&codSerVivo' int
);

CREATE TABLE 'planeta' (
    'cod' int,
    'nome' varchar(30),
    'diametro' decimal,
    'velRotacao' decimal,
    'idade' int,
    '&codSistema' int,
    '[&codEstrelaPrincipal]' int
);