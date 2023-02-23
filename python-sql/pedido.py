import psycopg2
import pandas as pd

conexao = psycopg2.connect(database='pedido',
                           host='localhost',
                           user = 'postgres',
                           password= '123456',
                           port = '5432')
print(conexao.info)
print(conexao.status)


cursor = conexao.cursor()

#CONSULTAS

#cursor.execute('SELECT * FROM clientes')
#print(cursor.fetchall())
#cursor.execute('SELECT * FROM clientes_dados')
#print(cursor.fetchall())

#INSERÇÃO

#novo_bairro = input('Digite o nome do novo bairro: ')
#cursor.execute("INSERT INTO bairro (idbairro, nome) VALUES ('52', '{nome}')".format(nome=novo_bairro))
#conexao.commit()

#UPDATE

#novo_bairro = input('Digite o nome do novo bairro a ser alterado: ')
#id_bairro = input('Digite o numero do id a ser alterado: ')
#cursor.execute(("UPDATE bairro SET nome = '{nome}' WHERE idbairro = {id}".format(nome = novo_bairro, id = id_bairro)))
#conexao.commit()

#EXCLUSÃO

#idbairro = int(input('digite o id'))
#cursor.execute("DELETE FROM bairro WHERE idbairro = {id}".format(id=idbairro))
#conexao.commit()

#FUNÇÕES

#idcliente = 7
#cursor.execute('SELECT get_nome_by_id2({id})'.format(id=idcliente))
#print(cursor.fetchall())

#PROCEDIMENTOS

#cursor.execute('CALL reajusta_produto(3,10)')

#PANDAS

cursor.execute('SELECT cln.nome as cliente, sum(pdd.valor) as total FROM pedido pdd left outer join clientes cln on cln.idcliente = pdd.idcliente group by cln.nome')
dados = cursor.fetchall()
print(dados)

colunas = []
for col in cursor.description:
    print(col[0])
    colunas.append(col[0])

df = pd.DataFrame(data = dados, columns=colunas)
print(df)