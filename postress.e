  postgress_db:
    image: postgres:17
    restart: always
    env_file:
      - .env
    ports: 
      - "5432:5432"
    volumes:
      - postgress_data:/var/lib/postgresql/data/
    networks:
      - my-network 

volumes:
  postgress_data: