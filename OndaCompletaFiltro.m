function varargout = OndaCompletaFiltro(varargin)
% ONDACOMPLETAFILTRO MATLAB code for OndaCompletaFiltro.fig
%      ONDACOMPLETAFILTRO, by itself, creates a new ONDACOMPLETAFILTRO or raises the existing
%      singleton*.
%
%      H = ONDACOMPLETAFILTRO returns the handle to a new ONDACOMPLETAFILTRO or the handle to
%      the existing singleton*.
%
%      ONDACOMPLETAFILTRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ONDACOMPLETAFILTRO.M with the given input arguments.
%
%      ONDACOMPLETAFILTRO('Property','Value',...) creates a new ONDACOMPLETAFILTRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OndaCompletaFiltro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OndaCompletaFiltro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OndaCompletaFiltro

% Last Modified by GUIDE v2.5 27-Nov-2016 02:21:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OndaCompletaFiltro_OpeningFcn, ...
                   'gui_OutputFcn',  @OndaCompletaFiltro_OutputFcn, ...
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


% --- Executes just before OndaCompletaFiltro is made visible.
function OndaCompletaFiltro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OndaCompletaFiltro (see VARARGIN)

% Choose default command line output for OndaCompletaFiltro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OndaCompletaFiltro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OndaCompletaFiltro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

 a=imread('Ayudar.png');
 imagen1=imresize(a,[40 40]);
 set(handles.pushbutton5,'CData',imagen1) 
 
 a=imread('regresarNB.png');
 imagen2=imresize(a,[80 100]);
 set(handles.pushbutton7,'CData',imagen2)

varargout{1} = handles.output;



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit4=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit5=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n



% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit6=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n



% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit7=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n



% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit8=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n



% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
contenido=get(hObject,'String');
  a=get(hObject,'Value');
  oper=contenido(a);
  C=handles.edit7;
  switch cell2mat(oper)
      case 'F'
          B=C;
      case 'mF'
          B=C*10^-3;
      case '�F'
          B=C*10^-6;
      case 'nF'
          B=C*10^-9;
      case 'pF'
          B=C*10^-12;
  end
 
 handles.listbox1=B; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicaci�n

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2
contenido=get(hObject,'String');
  a=get(hObject,'Value');
  oper=contenido(a);
  G=handles.edit8;
  switch cell2mat(oper)
      case 'Ohms'
          R=G;
      case 'K Ohms'
          R=G*10^3;
      case 'M Ohms'
          R=G*10^6;
      case 'G Ohms'
          R=G*10^9;
      case 'T Ohms'
          R=G*10^12;
  end
 
 handles.listbox2=R; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicaci�n

% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


A=handles.edit4;
B=handles.edit5;
C=handles.edit6;
D=handles.listbox1;
E=handles.listbox2;

vrms=((A/B)*C)/2;
set(handles.text11,'String',vrms);
vp=vrms * sqrt(2);
set(handles.text8,'String',vp);
vprom=vp * 0.636;
set(handles.text13,'String',vprom);
I=vp / E;
set(handles.text15,'String',I);
Vriz=I / (120 * D);
set(handles.text17,'String',Vriz);
Vsal= vp - 0.7 - (Vriz / 2);
set(handles.text19,'String',Vsal);


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
path = 'xdd.jpg';
imag = imread(path);
imshow(imag);
axis off;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text11,'String','');
set(handles.text8,'String','');
set(handles.text13,'String','');
set(handles.text15,'String','');
set(handles.text17,'String','');
set(handles.text19,'String','');
set(findobj(handles.figure1,'style','edit'),'string','');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure 
moon = imread('Onda completa filtro.jpg');
imshow(moon);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg('�sto es una escala, el Vred se divide entre lo que ingreses en el recuadro inferior izquierdo, y se multiplica por el de la derecha y por ser un circuito de onda completa se divide entre 2, esto es debido a que se conecta el independiente y secundario en vez de los 2 cables secundarios, convirtiendo as� el Vred en Vrms. Si t� tienes un Vrms en especifico, en la escala coloca 1:2.','Ayuda');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
InterfazCapacitores1
close OndaCompletaFiltro
