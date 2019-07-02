# Tuto-Scalabel
Aqui eu vou explicar como instalar e usar o Scalabel

[Scalabel](https://www.scalabel.ai) é uma ferramenta que auxilia na criação de datasets, facilitando o processo de rotulação das imagens.

O processo de instalação é bem simples.

1. Baixe o repositório

    ```
    git clone git@github.com:ucbdrive/scalabel.git
    cd scalabel
    ```
    
2. Faça o dowload da imagem Docker
 
    ```
    docker pull scalabel/www
    ```

3. Crie uma pasta com as configurações

    ```
    mkdir data
    cp app/config/default_config.yml data/config.yml
    ```
4. Inicie o container

    ``` 
    docker run -it -v `pwd`/data:/opt/scalabel/data -p 8686:8686 scalabel/www \
        /opt/scalabel/bin/scalabel --config /opt/scalabel/data/config.yml
    ```
Pronto, agora o serviço pode ser acessado em `http://localhost:8686`.

### Criando um projeto

Acesse `http://localhost:8686/create`. Você deve ver essa página

<img src="https://www.scalabel.ai/doc/demo/readme/project-creation-blank.png" width="500px">


`Project Name` é o nome do seu projeto. Somente letras, números, '_' e '-' são permitidos.
Selecione `Item Type` e `Label Type` de acordo com o tipo de anotação que irá fazer. O nome da página será preenchido automaticamente com base no `Item Type` e `Label Type` selecionados. Um projeto consiste de várias tarefas.`Task Size` é o número de imagens em cada tarefa.

`Item List` é a lista de imagens para anotação. O arquivo pode ser tanto json ou yaml com o [formato bdd](https://github.com/ucbdrive/bdd-data/blob/master/doc/format.md). O único campo necessário é `url`. Veja [examples/image_list.yml](examples/image_list.yml) para um arquivo de exemplo. 

`Category` e `Attributes` são os rótulos e seus atributos, respectivamente. Os arquivos de exemplo são [examples/categories.yml](examples/categories.yml) e [examples/bbox_attributes.yml](examples/bbox_attributes.yml).

Para criar um projeto de rotulação de bounding boxes 2D, a configuração será a seguinte

<img src="https://www.scalabel.ai/doc/demo/readme/project-creation.png" width="500px">

Depois de clicar em `ENTER`, o projeto será criado e 2 painéis de controle gerados. Os links aparecerão no final da página.

<img src="https://www.scalabel.ai/doc/demo/readme/project-creation-after-enter.png" width="500px">

`DASHBOARD` é o painél principal para o progresso da anotação e para o download dos rótulos.

<img src="https://www.scalabel.ai/doc/demo/readme/creator-dashboard.png" width="500px">

Você pode baixar as anotações no formato BDD no botão `EXPORT RESULTS` na barra de ferramentas à esquerda.

Ao clicar em `task link` você será redirecionado à página da tarefa.

<img src="https://www.scalabel.ai/doc/demo/readme/bbox2d-interface.jpg">


Grande parte desse tutorial é uma tradução de [github.com/ucbdrive/scalabel](https://github.com/ucbdrive/scalabel)
