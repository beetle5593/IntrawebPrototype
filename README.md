# README

## Tutorial Link

1. [Introduction of Bootstrap Framework](https://www.youtube.com/watch?v=oCVQ-lLfcHI)
2. [Create Intraweb Project](https://www.youtube.com/watch?v=oCVQ-lLfcHI)
3. [Select a Template](https://www.youtube.com/watch?v=-7Iu55LCUlM)
4. [Copy Template to Intraweb Project](https://www.youtube.com/watch?v=c-eapUdzxUQ)
5. [Implement template to login page with css and js loaded](https://www.youtube.com/watch?v=QPY2ENqAcuc)
6. [Add master template](https://www.youtube.com/watch?v=_KE_kpuqxV0)
   - assign attibeute to html element using HTMLTag
7. [Implement external css and js to Intraweb (SweetAlert2)](https://www.youtube.com/watch?v=9OTCCY2Riz8)
   - generate script to execute 
   - execute local script using `WebApplication.CallBackResponse.AddJavaScriptToExecute` in `async` function
8. [Master template + index form](https://www.youtube.com/watch?v=RvNfPa1nGh8)
9. [User session + bind user info to index form](https://www.youtube.com/watch?v=iHpkmZ7BFNM)
10. [Implement callback](https://www.youtube.com/watch?v=9bica3pob7Q)
    - implement callback function on form
        ```pas
        // callback function
        procedure proc_Action(EventParams: TStringList);
        begin
            ...
        end;

        // register callback function
        RegisterCallBack('proc_Action', proc_Action);

        
        ```
    - implement javascript on template
      ```html
        // script
        <script>
            function funcExecutor(action, id){
              ajaxCall("proc_Action", "Params=p1="+action+",p2="+id)
            }
        </script>

        // element
        <a onclick="funcExecutor('Logout', 0)">Logout</a>
      ```     
11. [Add breadcrumb header page, switch page between home, list and dashboard, switch page](https://www.youtube.com/watch?v=zmF_nrS_prg)  
12. [Create form control page template](https://www.youtube.com/watch?v=P6Ay7ctkjEw)
13. [Implement jquery mask js for input format](https://www.youtube.com/watch?v=AAw3bb5kMxo)
    ```javascript
    // example
    $('.Date').mask('99/99/9999');
    $('.ICNo').mask('999999-99-9999');
    $('.phoneNumber').mask('999-99999999');
    ...
    ```
14. [jQuery Masked Input](https://www.youtube.com/watch?v=cVCAgBSeWvw)
    ```html
    <select id="item" onchange="itemChange();">
        <option>item 1</option>
        <option>item 2</option>
    </select>

    <script>
        function itemChange(){
            // fill some item detail to other input
            

            // change some input format
            $('.ICNo').mask('999999-99-9999'); 
        }
    </script>
    ```
15. [Create entry form page and bind with template](https://www.youtube.com/watch?v=waRUa3F0e6M)
16. [Create Personal class (part 1)](https://www.youtube.com/watch?v=WipUGpQsThA)
17. [Create DBConnection and table (part 2)](https://www.youtube.com/watch?v=7u3u2zOk6QM)
18. [Create binding data to database (part 3)](https://www.youtube.com/watch?v=OBpxvFwcMcg)
19. [Datatable - Create table html (part 1)](https://www.youtube.com/watch?v=LV4IaX78tSI)
20. [Datatable - Listing person record (part 2)](https://www.youtube.com/watch?v=GAwW7C3A-po)
21. [Datatable - register ajax callback, with edit button (part 3)](https://www.youtube.com/watch?v=JjnehLRg8II)
22. [Datatable - implement remove button with confirm dialog (part 4)](https://www.youtube.com/watch?v=JjnehLRg8II)
23. [Generate PDF report, show on new tab, modal dialog, cached temp file](https://www.youtube.com/watch?v=ZJmYmjZrL0o)
    ```pas
    // modal window
    with ModalWindows do begin
        Reset; 
        Title        := 'Relatorio Maratona Intraweb';
        Draggable    := False;
        OnAsyncClick := nil;
        Src          := xTmp; 
        Show;
    end;

    // open new tab
    WebApplication.CallBackResponse.AddJavaScriptToExecute('window.open("'+ xTemp +'", ''"_blank"'');');

    // cached temp file
    WebApplication.SendFile(xTmp, False, TIWMimeTypes.GetAsString(mtpdf), '');
    ```
24. [Create ui widget](https://www.youtube.com/watch?v=dyQwL3vywdI)
    ```pas
    // inside template
    {%Widget1%}
    {%Widget2%}

    // code
    widget1.RawText := True;
    widget1.Text    := GetWidget(...); // html template

    // TPSUnknownTag
    procedure TForm1.TPSUnknownTag(const AName: var VValue: string);
    begin
      if AName = 'widget2' then
        VValue := GwtWidget(...);
    end;
    ```
25. [Implement google chart and amCharts 4 library](https://www.youtube.com/watch?v=lWrcOKsRZHQ)
26. [Server control configuration](https://www.youtube.com/watch?v=713W6QoMYHQ)
    ```pas
    // ServerControll
    procedure TIWServerController.IWServerCOntrollerBaseBind(const aHttpBindings, aHttpsBindings: TStrings);
    begin
      {$IFDEF DEBUG}
        aHttpBindings.Add('http://*:80/');
      {$ELSE}
        aHttpBindings.Add('https://intraweb.com:80/');
        aHttpsBindings.Add('https://intraweb.com:443/');
      {$ENDIF}
    end

    procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
    begin
      AppName     := 'App_Name';
      Description := 'Description';
      DisplayName := 'Display_Name'

      {$IFDEF DEBUG}
        SSLOptions.NonSSLRequest := nsAccept;
        SSLOptions.Port := 0;  
      {$ELSE}
        SSLOptions.NonSSLRequest := nsRedirect;
        SSLOptions.Port := 443;
      {$ENDIF}
      
    end;
    ```
27. [Hosting and config domain](https://www.youtube.com/watch?v=R1PxquIYeq0)
28. [cPanel config with domain](https://www.youtube.com/watch?v=IYhRG2i5gu8)
29. [Generate self sign certificate](https://www.youtube.com/watch?v=3PR53yACNDQ)
30. [Create encrypted certificate](https://www.youtube.com/watch?v=HQaa-BDb8Xk)
