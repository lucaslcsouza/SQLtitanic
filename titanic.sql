select * from inputs.train;

#filtrar apenas sexo masculino#

select * from inputs.train
where Sex in ('male');

#filtrar apenas sexo feminino e embarcados no porto Q ou S

select * from inputs.train
where Sex in ('female') And Embarked in ('Q','S');

#filtrar masculino que tenha idade entre 20 e 45 embarcado no porto Q

select * from inputs.train
where Sex in ('male') 
and Embarked in ('Q')
and Age between 20 and 45;

#calcular a média dos que sobreviveram por Classe

select PClass,
	round(avg(Age),0) as Idade_Media,
	count(*) as Quantidade_Sobreviventes
from inputs.train
where Survived = 1
group by PClass
order by Pclass;

#volume e a taxa de sobreviventes por 
#porto de embarcação, consideração portos S, Q e C

select Embarked,
	round(100*avg(Survived),1) as Taxa_Sobreviventes,
    count(*) as Volume
from
	inputs.train
where Embarked in ('S','Q','C')
group by Embarked;

# media de sobreviventes por classe
select 
	avg(Survived)
	
from 
	inputs.train
where Pclass = 1 ;

select 
	avg(Survived)
	
from 
	inputs.train
where Pclass = 2 ;
select 
	avg(Survived)
	
from 
	inputs.train
where Pclass = 3 ;

# media de sobreviventes por sexo

select 
	avg(Survived)
	
from 
	inputs.train
where Sex = 'female' ;

select 
	avg(Survived)
	
from 
	inputs.train
where Sex = 'male' ;

# media de sobreviventes para idade abaixo dos 10 anos

select 
	avg(Survived)
	
from 
	inputs.train
where age <= 10 ;

# media de sobreviventes para a faixa de 30 - 45 anos
select 
	avg(Survived)
	
from 
	inputs.train
where age between 30 and 45 ;