function varargout = PolarizacionDivisordevoltaje(varargin)
% POLARIZACIONDIVISORDEVOLTAJE MATLAB code for PolarizacionDivisordevoltaje.fig
%      POLARIZACIONDIVISORDEVOLTAJE, by itself, creates a new POLARIZACIONDIVISORDEVOLTAJE or raises the existing
%      singleton*.
%
%      H = POLARIZACIONDIVISORDEVOLTAJE returns the handle to a new POLARIZACIONDIVISORDEVOLTAJE or the handle to
%      the existing singleton*.
%
%      POLARIZACIONDIVISORDEVOLTAJE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POLARIZACIONDIVISORDEVOLTAJE.M with the given input arguments.
%
%      POLARIZACIONDIVISORDEVOLTAJE('Property','Value',...) creates a new POLARIZACIONDIVISORDEVOLTAJE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PolarizacionDivisordevoltaje_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PolarizacionDivisordevoltaje_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PolarizacionDivisordevoltaje

% Last Modified by GUIDE v2.5 29-Nov-2016 18:18:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PolarizacionDivisordevoltaje_OpeningFcn, ...
                   'gui_OutputFcn',  @PolarizacionDivisordevoltaje_OutputFcn, ...
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


% --- Executes just before PolarizacionDivisordevoltaje is made visible.
function PolarizacionDivisordevoltaje_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PolarizacionDivisordevoltaje (see VARARGIN)

% Choose default command line output for PolarizacionDivisordevoltaje
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PolarizacionDivisordevoltaje wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PolarizacionDivisordevoltaje_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

 a=imread('regresarNB.png');
 imagen2=imresize(a,[80 100]);
 set(handles.pushbutton3,'CData',imagen2)

varargout{1} = handles.output;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit2=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

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
guidata(hObject,handles); %Salvar datos de la aplicación

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
guidata(hObject,handles); %Salvar datos de la aplicación

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
guidata(hObject,handles); %Salvar datos de la aplicación

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
guidata(hObject,handles); %Salvar datos de la aplicación

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
guidata(hObject,handles); %Salvar datos de la aplicación

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
  G=handles.edit4;
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
 
 handles.listbox1=R; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

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
  G=handles.edit5;
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
 guidata(hObject,handles); %Salvar datos de la aplicación

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




% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3
contenido=get(hObject,'String');
  a=get(hObject,'Value');
  oper=contenido(a);
  G=handles.edit6;
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
 
 handles.listbox3=R; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4
contenido=get(hObject,'String');
  a=get(hObject,'Value');
  oper=contenido(a);
  G=handles.edit7;
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
 
 handles.listbox4=R; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=handles.listbox1;
B=handles.listbox2;
C=handles.listbox3;
D=handles.listbox4;
E=handles.edit2;

ic = E/(A+B);
set(handles.text26,'String',ic);
vce = E;
set(handles.text27,'String',vce);

vth = (D*E)/(C+D);
set(handles.text13,'String',vth);
ve = vth - 0.7;
set(handles.text14,'String',ve);
ic2 = ve/B;
set(handles.text19,'String',ic2);
vc = E-(A*ic2);
set(handles.text20,'String',vc);
vce2 = vc - ve;
set(handles.text15,'String',vce2);

axes(handles.axes2);
A= ic %Esto es IC
B= vce %Esto es VCE
C= ic2 %Esto es ic
D= vce2 %Esto es vce

if C<A
P1=[0 A];P2=[B 0];
P3=[0 C];P4=[B C];
P5=[D 0];P6=[D A];
plot([P1(1) P2(1)],[P1(2) P2(2)],'r',[P3(1) P4(1)],[P3(2) P4(2)],'r',[P5(1) P6(1)],[P5(2) P6(2)],'r') % "r
elseif C>A
    P1=[0 A];P2=[B 0];
    plot([P1(1) P2(1)],[P1(2) P2(2)],'r')
    errordlg('Transistor en conmutación, sobrepasa la grafica creada','File Error');
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
path = 'Polarización por divisor de voltaje.jpg';
imag = imread(path);
imshow(imag);
axis off;
% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(findobj(handles.figure1,'style','edit'),'string','');
set(handles.text26,'String','');
set(handles.text27,'String','');
set(handles.text13,'String','');
set(handles.text14,'String','');
set(handles.text19,'String','');
set(handles.text15,'String','');
set(handles.text20,'String','');
cla reset

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
InterfazTransistores1
close PolarizacionDivisordevoltaje


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
