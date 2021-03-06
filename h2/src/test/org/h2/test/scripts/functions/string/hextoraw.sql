-- Copyright 2004-2019 H2 Group. Multiple-Licensed under the MPL 2.0,
-- and the EPL 1.0 (http://h2database.com/html/license.html).
-- Initial Developer: H2 Group
--

create memory table test(id int primary key, name varchar(255));
> ok

insert into test values(1, 'Hello');
> update count: 1

select hextoraw(null) en, rawtohex(null) en1, hextoraw(rawtohex('abc')) abc from test;
> EN   EN1  ABC
> ---- ---- ---
> null null abc
> rows: 1

