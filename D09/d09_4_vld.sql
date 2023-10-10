create or replace package d09_vld
is
 
    procedure tipo_documento (
        p_rec              d09_tipo_documento%rowtype
    );

end d09_vld;
/


create or replace package  body d09_vld 
is 
  
    procedure tipo_documento ( 
        p_rec              d09_tipo_documento%rowtype 
    ) 
    is 
    begin 
        if p_rec.tipo_documento like '% %' then 
           raise_application_error(-20001,'Il tipo_documento non DEVE contenere spazi!'); 
        end if; 
    end tipo_documento; 
 
end d09_vld; 

/