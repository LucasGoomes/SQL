import psycopg2

conexao = psycopg2.connect(database='pedido',
                           host='localhost',
                           user = 'postgres',
                           password= '123456',
                           port = '5432')
print(conexao.info)
print(conexao.status)


cursor = conexao.cursor()
##Consultas

#cursor.execute('SELECT * FROM clientes')
#print(cursor.fetchall())
#cursor.execute('SELECT * FROM clientes_dados')
#print(cursor.fetchall())

#Inserção

#novo_bairro = input('Digite o nome do novo bairro: ')
#cursor.execute("INSERT INTO bairro (idbairro, nome) VALUES ('52', '{nome}')".format(nome=novo_bairro))
#conexao.commit()

#update

#novo_bairro = input('Digite o nome do novo bairro a ser alterado: ')
#id_bairro = input('Digite o numero do id a ser alterado: ')
#cursor.execute(("UPDATE bairro SET nome = '{nome}' WHERE idbairro = {id}".format(nome = novo_bairro, id = id_bairro)))
#conexao.commit()

#exclusão
idbairro = int(input('digite o id'))
cursor.execute("DELETE FROM bairro WHERE idbairro = {id}".format(id=idbairro))
conexao.commit()
