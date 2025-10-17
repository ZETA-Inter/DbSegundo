alter table companies
drop column status;

alter table companies
add column active boolean not null default 'true';

alter table workers
drop column status;

alter table workers
add column active boolean not null default 'true';