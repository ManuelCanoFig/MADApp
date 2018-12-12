function varargout = Ecuaciones(varargin)
% ECUACIONES MATLAB code for Ecuaciones.fig
%      ECUACIONES, by itself, creates a new ECUACIONES or raises the existing
%      singleton*.
%
%      H = ECUACIONES returns the handle to a new ECUACIONES or the handle to
%      the existing singleton*.
%
%      ECUACIONES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECUACIONES.M with the given input arguments.
%
%      ECUACIONES('Property','Value',...) creates a new ECUACIONES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ecuaciones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ecuaciones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ecuaciones

% Last Modified by GUIDE v2.5 29-Nov-2016 22:33:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ecuaciones_OpeningFcn, ...
                   'gui_OutputFcn',  @Ecuaciones_OutputFcn, ...
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


% --- Executes just before Ecuaciones is made visible.
function Ecuaciones_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ecuaciones (see VARARGIN)

% Choose default command line output for Ecuaciones
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ecuaciones wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ecuaciones_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%IMAGEN DE regreso%%%%%%%%%%%%%
imagen=imread('regresarNB.png');
imagen1=imresize(imagen,[70,100]);
set(handles.pushbutton5,'CData',imagen1);
% Get default command line output from handles structure
varargout{1} = handles.output;



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit5=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit6=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
B=handles.uresistencia;

D=handles.listbox3;
E=handles.VoC;
t=handles.edit7;
vf=handles.edit8;%carga

if E==2
    C=handles.ucapacitor;
    if D==1%voltaje
        
        
        x=0:0.05:t;

        Vc=vf-vf*exp((-x*100)/(B*C));
        plot(x,Vc);
        axis([0 t 0 vf]);
        grid on;
        zoom on;
        
        
    elseif D==2
%descarga
        
        x=0:0.05:t;
        Vc=vf*(exp((-x*100)/(B*C)));
        plot(x,Vc);
        axis([0 t 0 vf]);
        grid on;
        zoom on;
      
    end 
    
elseif E==1%corriente
   
    if D==1 %carga
        x=0:0.05:t;
    C=handles.edit5;
        Il=(vf-vf*exp(((-x*100)*B)/C))/B;
        plot(x,Il);
        %axis([0 t 0 vf]);
        grid on;
        zoom on;
    elseif D==2 %descarga
        x=0:0.05:t;  
         C=handles.edit5;
        Il=(vf*exp(((-x*100)*B)/C))/B;
        plot(x,Il);
        %axis([0 t 0 vf]);
        grid on;
        zoom on;
    end
end    


% --- Executes when selected object is changed in uipanel3.
function uipanel3_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel3 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)

%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit7=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


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
Val=get(hObject,'String'); %Almacenar valor ingresado
NewVal = str2double(Val); %Transformar el formato a double
handles.edit8=NewVal; %Almacenar en identificador
guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


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



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uipanel5.
function uipanel5_SelectionChangeFcn(hObject, eventdata, handles)



% --- Executes when selected object is changed in uipanel4.
function uipanel4_SelectionChangeFcn(hObject, eventdata, handles)
if hObject==handles.radiobutton7
    set(handles.salida,'String','Carga');
elseif hObject==handles.radiobutton8
    set(handles.salida,'String','Descarga');
end


% --- Executes on selection change in VoC.
function VoC_Callback(hObject, eventdata, handles)
contenido=get(hObject,'String');
  a=get(hObject,'Value');
  oper=contenido(a);
 
  switch cell2mat(oper)
      case 'Inductor'
          op=1;
        set(handles.text14,'Visible','on');
        set(handles.text6,'Visible','off');
        set(handles.ucapacitor,'Visible','off');
      case 'Capacitor'
          op=2;
        set(handles.text14,'Visible','off');
        set(handles.text6,'Visible','on');  
        set(handles.ucapacitor,'Visible','on');
  end
 
 handles.VoC=op; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: contents = cellstr(get(hObject,'String')) returns VoC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from VoC


% --- Executes during object creation, after setting all properties.
function VoC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VoC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
contenido=get(hObject,'String');
   a=get(hObject,'Value');
  oper=contenido(a);
  switch cell2mat(oper)
      case 'Cerrado'
          op1=1;
      case 'Abierto'
          op1=2;
     
  end
 
 handles.listbox3=op1; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


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


% --- Executes on selection change in uresistencia.
function uresistencia_Callback(hObject, eventdata, handles)
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
 
 handles.uresistencia=R; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: contents = cellstr(get(hObject,'String')) returns uresistencia contents as cell array
%        contents{get(hObject,'Value')} returns selected item from uresistencia


% --- Executes during object creation, after setting all properties.
function uresistencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uresistencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in ucapacitor.
function ucapacitor_Callback(hObject, eventdata, handles)
contenido=get(hObject,'String');
  a=get(hObject,'Value');
  oper=contenido(a);
  C=handles.edit6;
  switch cell2mat(oper)
      case 'F'
          B=C;
      case 'mF'
          B=C*10^-3;
      case 'µF'
          B=C*10^-6;
      case 'nF'
          B=C*10^-9;
      case 'pF'
          B=C*10^-12;
  end
 
 handles.ucapacitor=B; %Almacenar en identificador
 guidata(hObject,handles); %Salvar datos de la aplicación

% Hints: contents = cellstr(get(hObject,'String')) returns ucapacitor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ucapacitor


% --- Executes during object creation, after setting all properties.
function ucapacitor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ucapacitor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in carga.
function carga_Callback(hObject, eventdata, handles)
% hObject    handle to carga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns carga contents as cell array
%        contents{get(hObject,'Value')} returns selected item from carga


% --- Executes during object creation, after setting all properties.
function carga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to carga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
