function varargout = RectificadorPuente(varargin)
% RECTIFICADORPUENTE MATLAB code for RectificadorPuente.fig
%      RECTIFICADORPUENTE, by itself, creates a new RECTIFICADORPUENTE or raises the existing
%      singleton*.
%
%      H = RECTIFICADORPUENTE returns the handle to a new RECTIFICADORPUENTE or the handle to
%      the existing singleton*.
%
%      RECTIFICADORPUENTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECTIFICADORPUENTE.M with the given input arguments.
%
%      RECTIFICADORPUENTE('Property','Value',...) creates a new RECTIFICADORPUENTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RectificadorPuente_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RectificadorPuente_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RectificadorPuente

% Last Modified by GUIDE v2.5 27-Nov-2016 02:15:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RectificadorPuente_OpeningFcn, ...
                   'gui_OutputFcn',  @RectificadorPuente_OutputFcn, ...
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


% --- Executes just before RectificadorPuente is made visible.
function RectificadorPuente_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RectificadorPuente (see VARARGIN)

% Choose default command line output for RectificadorPuente
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RectificadorPuente wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RectificadorPuente_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
a=imread('Ayudar.png');
imagen1=imresize(a,[40 40]);
set(handles.pushbutton4,'CData',imagen1)
 
 a=imread('regresarNB.png');
 imagen2=imresize(a,[80 100]);
 set(handles.pushbutton8,'CData',imagen2)
 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit1=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n


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
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit2=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n

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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit3=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicaci�n

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
  D=handles.edit4;
  switch cell2mat(oper)
      case 'Ohms'
          A=D;
      case 'K Ohms'
          A=D*10^3;
      case 'M Ohms'
          A=D*10^6;
      case 'G Ohms'
          A=D*10^9;
      case 'T Ohms'
          A=D*10^12;
  end
 
 handles.listbox1=A; %Almacenar en identificador
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


% --- Executes on button press in pushbutton1.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

A=handles.edit1;
B=handles.edit2;
C=handles.edit3;
D=handles.listbox1;
vrms=(A/B)*C;
set(handles.text10,'String',vrms);
vp=vrms * sqrt(2);
set(handles.text5,'String',vp);
vpp=2 * vp;
set(handles.text8,'String',vpp);
vsal=vp - 1.4;
set(handles.text12,'String',vsal);
vprom=vsal * 0.636;
set(handles.text14,'String',vprom);
iprom=vprom/D;
set(handles.text16,'String',iprom);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text10,'String','');
set(handles.text5,'String','');
set(handles.text8,'String','');
set(handles.text12,'String','');
set(handles.text14,'String','');
set(handles.text16,'String','');
set(findobj(handles.figure1,'style','edit'),'string','');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure 
moon = imread('Puente.jpg');
imshow(moon);

% --- Executes on button press in pushbutton7.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg('�sto es una escala, el Vred se divide entre lo que ingreses en el recuadro inferior izquierdo, y se multiplica por el de la derecha, convirtiendo as� el Vred en Vrms. Si t� tienes un Vrms en especifico, en la escala coloca 1:1.','Ayuda');


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
path = 'ondacom.png';
imag = imread(path);
imshow(imag);
axis off;
% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
InterfazDiodos1
close RectificadorPuente
