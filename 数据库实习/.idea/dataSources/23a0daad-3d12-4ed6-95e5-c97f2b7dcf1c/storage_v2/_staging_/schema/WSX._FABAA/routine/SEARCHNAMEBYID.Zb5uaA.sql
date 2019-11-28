create or replace procedure SearchNameById(
    uid in number,                            --定义IN模式变量,要求输入人员编号
    uname out "user".user_name%type)
    is
begin
    select user_name
    into uname
    from "user"
    where user_id=uid;
end SearchNameById;