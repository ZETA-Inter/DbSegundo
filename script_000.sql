DROP TABLE IF EXISTS plan_functionalities;
DROP TABLE IF EXISTS functionalities;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS responsibles;
DROP TABLE IF EXISTS goals;
DROP TABLE IF EXISTS worker_programs;
DROP TABLE IF EXISTS progresses;
DROP TABLE IF EXISTS user_segments;
DROP TABLE IF EXISTS workers;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS plans;
DROP TABLE IF EXISTS programs;
DROP TABLE IF EXISTS segments;

CREATE TABLE segments ( id   SERIAL       NOT NULL UNIQUE      
                      , name VARCHAR(255) NOT NULL      
                      , PRIMARY KEY (id)
                      );
					  
CREATE TABLE programs ( id               SERIAL       NOT NULL UNIQUE      
                      , name             VARCHAR(255) NOT NULL      
                      , description      VARCHAR(255) NOT NULL      
                      , segment_id       INTEGER      NOT NULL 
                      , quantity_modules INTEGER      NOT NULL
                      , PRIMARY KEY (id)      
                      , FOREIGN KEY (segment_id) REFERENCES segments(id)
                      );

CREATE TABLE plans ( id                    SERIAL       NOT NULL UNIQUE      
                   , name                  VARCHAR(255) NOT NULL
                   , value                 DECIMAL      NOT NULL      
                   , PRIMARY KEY(id)
                   );

CREATE TABLE companies ( id       SERIAL       NOT NULL UNIQUE       
                       , name     VARCHAR(255) NOT NULL       
                       , email    VARCHAR(255) NOT NULL UNIQUE       
                       , password VARCHAR(255) NOT NULL       
                       , plan_id  INTEGER      NOT NULL       
                       , PRIMARY KEY (id)       
                       , FOREIGN KEY (plan_id) REFERENCES plans(id)
                       );

CREATE TABLE workers ( id         SERIAL       NOT NULL UNIQUE     
                     , email      VARCHAR(255) NOT NULL UNIQUE     
                     , password   VARCHAR(255) NOT NULL     
                     , name       VARCHAR(255) NOT NULL     
                     , birthdate  DATE         NOT NULL     
                     , plan_id    INTEGER      NOT NULL     
                     , program_id INTEGER      NOT NULL     
                     , company_id INTEGER      NOT NULL     
                     , PRIMARY KEY (id)     
                     , FOREIGN KEY (plan_id)    REFERENCES plans(id)     
                     , FOREIGN KEY (company_id) REFERENCES companies(id)
                     );


CREATE TABLE user_segments ( id         SERIAL  NOT NULL UNIQUE        
                           , segment_id INTEGER NOT NULL        
                           , company_id INTEGER     NULL        
                           , worker_id  INTEGER     NULL        
                           , PRIMARY KEY (id)        
                           , FOREIGN KEY (segment_id) REFERENCES segments(id)        
                           , FOREIGN KEY (company_id) REFERENCES companies(id)        
                           , FOREIGN KEY (worker_id)  REFERENCES workers(id)
                           );

CREATE TABLE progresses ( id                  SERIAL  NOT NULL UNIQUE 
                        , date                DATE     
                        , points              INTEGER     
                        , progress_percentage INTEGER 
                        , worker_id           INTEGER NOT NULL 
                        , PRIMARY KEY (id)
                        , FOREIGN KEY (worker_id) REFERENCES workers (id)
                        );
						

CREATE TABLE worker_programs ( id          SERIAL  NOT NULL UNIQUE       
                             , worker_id   INTEGER NOT NULL       
                             , program_id  INTEGER NOT NULL       
                             , progress_id INTEGER NOT NULL       
                             , grade       INTEGER NOT NULL DEFAULT 0       
                             , PRIMARY KEY(id)       
                             , FOREIGN KEY (worker_id)   REFERENCES workers(id)       
                             , FOREIGN KEY (program_id)  REFERENCES programs(id)       
                             , FOREIGN KEY (progress_id) REFERENCES progresses(id)
                             );

CREATE TABLE goals ( id                SERIAL       NOT NULL UNIQUE      
                   , worker_program_id INTEGER      NOT NULL      
                   , description       VARCHAR(255) NOT NULL      
                   , PRIMARY KEY(id)      
                   , FOREIGN KEY (worker_program_id) REFERENCES worker_programs(id)
                   );

CREATE TABLE responsibles ( id         SERIAL       NOT NULL UNIQUE       
                          , first_name VARCHAR(255) NOT NULL       
                          , last_name  VARCHAR(255) NOT NULL       
                          , email      VARCHAR(255) NOT NULL       
                          , company_id INTEGER      NOT NULL       
                          , PRIMARY KEY (id)       
                          , FOREIGN KEY (company_id) REFERENCES companies(id)
                          );

CREATE TABLE images ( id           SERIAL       NOT NULL UNIQUE    
                    , origin_table VARCHAR(255) NOT NULL    
                    , source_id    INTEGER      NOT NULL    
                    , image_url    VARCHAR(255) NOT NULL    
                    , PRIMARY KEY(id)
                    );

CREATE TABLE functionalities ( id   SERIAL       NOT NULL UNIQUE       
                             , name VARCHAR(255)       
                             , PRIMARY KEY (id)
                             );					

CREATE TABLE plan_functionalities ( id               SERIAL  NOT NULL UNIQUE         
                                  , plan_id          INTEGER NOT NULL         
                                  , functionality_id INTEGER NOT NULL         
                                  , PRIMARY KEY (id)         
                                  , FOREIGN KEY (plan_id)          REFERENCES plans(id)         
                                  , FOREIGN KEY (functionality_id) REFERENCES functionalities(id)
                                  );

