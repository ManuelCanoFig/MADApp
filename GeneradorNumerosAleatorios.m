function varargout = GeneradorNumerosAleatorios(varargin)
% GENERADORNUMEROSALEATORIOS MATLAB code for GeneradorNumerosAleatorios.fig
%      GENERADORNUMEROSALEATORIOS, by itself, creates a new GENERADORNUMEROSALEATORIOS or raises the existing
%      singleton*.
%
%      H = GENERADORNUMEROSALEATORIOS returns the handle to a new GENERADORNUMEROSALEATORIOS or the handle to
%      the existing singleton*.
%
%      GENERADORNUMEROSALEATORIOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERADORNUMEROSALEATORIOS.M with the given input arguments.
%
%      GENERADORNUMEROSALEATORIOS('Property','Value',...) creates a new GENERADORNUMEROSALEATORIOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GeneradorNumerosAleatorios_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GeneradorNumerosAleatorios_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GeneradorNumerosAleatorios

% Last Modified by GUIDE v2.5 29-Nov-2016 17:10:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GeneradorNumerosAleatorios_OpeningFcn, ...
                   'gui_OutputFcn',  @GeneradorNumerosAleatorios_OutputFcn, ...
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


% --- Executes just before GeneradorNumerosAleatorios is made visible.
function GeneradorNumerosAleatorios_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GeneradorNumerosAleatorios (see VARARGIN)

% Choose default command line output for GeneradorNumerosAleatorios
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GeneradorNumerosAleatorios wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GeneradorNumerosAleatorios_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%IMAGEN PARA REGRESAR%%%%%%%%%%%%%5
imagen=imread('regresarNB.png');
imagen1=imresize(imagen,[80 110]);

set(handles.pushbutton3,'CData',imagen1);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 A=handles.edit1;
 B=handles.edit2;
 D=handles.edit4;
 if A<B
   C= B - A;
   R=rand(1,D)*C + A;
   J=round (rand ( 1 , D ) *C) +A;
   set(handles.uitable2,'Data', R);
   set(handles.uitable5,'Data', J);
 elseif A>B
   errordlg('El valor ingresado en "Desde:" debe de ser mayor que "Hasta:"','Error');
 end

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
 Val=get(hObject,'String'); %Almacenar valor ingresado
 NewVal = str2double(Val); %Transformar el formato a double
 handles.edit1=NewVal; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación


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


% --- Executes on button press in regresar1.
function regresar1_Callback(hObject, eventdata, handles)
% hObject    handle to regresar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Interfazsim


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
