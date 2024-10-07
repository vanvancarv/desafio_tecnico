import random
from faker import Faker

class FakerLibrary:
    def __init__(self):
        self.faker = Faker()

    def gera_nome(self):
        full_name = self.faker.name()
        first_name = full_name.split()[0]
        return self.faker.first_name()
    
    def gera_email(self):
       return self.faker.email()
    
    def gera_email_gmail(self):
        full_name = self.faker.name()
        first_name = full_name.split()[0]
        domain = "gmail.com"
        return f"{first_name}@{domain}"

    def gera_telefone(self):
        return self.faker.phone_number()
    
    def gera_telefone_formato_especifico(self):
        ddd = random.choice(['11', '21', '71', '81', '91'])
        celular = random.choice([True, False])       
        if celular:
            numero_telefone = f"9{random.randint(1000, 9999)}{random.randint(1000, 9999)}"
        else:
            numero_telefone = f"{random.randint(2000, 9999)}{random.randint(1000, 9999)}"
        return f"({ddd}) {numero_telefone}"

    def gera_sobrenome(self):
        full_name = self.faker.name()
        last_name = full_name.split()[-1]
        return last_name
    
    def gera_somente_letras(self, length=10):
        letras   = ''.join(self.faker.random_letters(length))
        return letras
    
    def gera_somente_numeros(self, length=10):
        numeros   = ''.join(self.faker.random_letters(length))
        return numeros