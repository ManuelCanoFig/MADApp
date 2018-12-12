function varargout = MetodoNewton(varargin)
% METODONEWTON MATLAB code for MetodoNewton.fig
%      METODONEWTON, by itself, creates a new METODONEWTON or raises the existing
%      singleton*.
%
%      H = METODONEWTON returns the handle to a new METODONEWTON or the handle to
%      the existing singleton*.
%
%      METODONEWTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in METODONEWTON.M with the given input arguments.
%
%      METODONEWTON('Property','Value',...) creates a new METODONEWTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MetodoNewton_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MetodoNewton_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MetodoNewton

% Last Modified by GUIDE v2.5 28-Nov-2016 22:37:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MetodoNewton_OpeningFcn, ...
                   'gui_OutputFcn',  @MetodoNewton_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MetodoNewton is made visible.
function MetodoNewton_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MetodoNewton (see VARARGIN)

% Choose default command line output for MetodoNewton
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MetodoNewton wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MetodoNewton_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  %%%%%%%%%%%%%%%%%IMAGEN PARA REGRESAR%%%%%%%%%%%%%5
imagen=imread('regresarNB.png');
imagen1=imresize(imagen,[71 86]);

set(handles.pushbutton3,'CData',imagen1);
%%%%%%%%%%%%%%%%%IMAGEN PARA AYUDA%%%%%%%%%%%%%5
ayuda=imread('Ayudan.png');
imagen2=imresize(ayuda,[61 68]);

set(handles.pushbutton4,'CData',imagen2);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
g=get(handles.popupmenu1,'Value');

switch g
    
    case 1
        set(handles.tabla,'Visible','off');
        set(handles.error,'string','Seleccione la dimensión del polinomio');
    case 2
        set(handles.tabla,'Visible','on');
        num_elem=cell(3,2);
        num_elem(:,:)={''};
        set(handles.tabla,'data',num_elem);
        set(handles.tabla,'ColumnEditable',true(1,1));
    case 3
        set(handles.tabla,'Visible','on');
        num_elem=cell(4,2);
        num_elem(:,:)={''};
        set(handles.tabla,'data',num_elem);
        set(handles.tabla,'ColumnEditable',true(1,1));
    case 4
        set(handles.tabla,'Visible','on');
        num_elem=cell(5,2);
        num_elem(:,:)={''};
        set(handles.tabla,'data',num_elem);
        set(handles.tabla,'ColumnEditable',true(1,1));
     case 5
        set(handles.tabla,'Visible','on');
        num_elem=cell(6,2);
        num_elem(:,:)={''};
        set(handles.tabla,'data',num_elem);
        set(handles.tabla,'ColumnEditable',true(1,1)); 
    case 6
        set(handles.tabla,'Visible','on');
        num_elem=cell(7,2);
        num_elem(:,:)={''};
        set(handles.tabla,'data',num_elem);
        set(handles.tabla,'ColumnEditable',true(1,1)); 
    case 7
        set(handles.tabla,'Visible','on');
        num_elem=cell(8,2);
        num_elem(:,:)={''};
        set(handles.tabla,'data',num_elem);
        set(handles.tabla,'ColumnEditable',true(1,1)); 
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=get(handles.popupmenu1,'Value');
t=(get(handles.tabla,'data'));
t=str2double(t);
%w=isnan(t(1:g,1:g));
    xt=t(:,1);
    fx=t(:,2);
    x=xt;
    d=zeros(length(fx));
    d(:,1)=fx;
    for k=2:length(x)
        for j=1:length(x)+1-k
            d(j,k)=(d(j+1,k-1)-d(j,k-1))/(x(j+k-1)-x(j));
        end
    end
    % Formacion del solucion
    for w=1:length(x)
        ds=num2str(abs(d(1,w)));
        if w>1
            if x(w-1)<0
                sg1='+';
            else
                sg1='-';
            end
        end
        if d(1,w)<0
            sg2='-';
        else
            sg2='+';
        end
        if w==1
            acum=num2str(d(1,1));
        elseif w==2
            polact=['(x' sg1 num2str(abs(x(w-1))) ')' ];
            actual=[ds '*' polact];
            acum=[acum sg2 actual];
        else
            polact=[polact '*' '(x' sg1 num2str(abs(x(w-1))) ')' ];
            actual=[ds '*' polact];
            acum=[acum sg2 actual];
        end
    end
    
    set(handles.edit3,'string',acum);
    pol=inline(acum);
    fplot(handles.axes1,pol,[min(x) max(x)]);
    grid on;
    zoom on;
    hold on;
 
    
 
vx=(get(handles.edit1,'string'));
vx=str2double(vx);
if vx<min(xt)
    set(handles.error,'string','Ingrese un valor de x dentro del intervalo de valores de x de la tabla, para poder visualizar el punto');
end
if vx>max(xt)
    set(handles.error,'string','Ingrese un valor de x dentro del intervalo de valores de x de la tabla,para poder visualizar el punto');
end
p=(get(handles.edit3,'string'));
p=inline(p);
s=(feval(p,vx));
s=num2str(s);
set(handles.edit2,'string',s);
s=str2double(s);
plot(vx,s,'ko');
axes(handles.axes1);
hold off


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.tabla,'data',{' ';' ';' ';' '});
set(handles.popupmenu1,'value',1);
axes(handles.axes1); 
cla;








function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
AyudaMet2;
