function varargout = gaussJordanForm(varargin)
% GAUSSJORDANFORM MATLAB code for gaussJordanForm.fig
%      GAUSSJORDANFORM, by itself, creates a new GAUSSJORDANFORM or raises the existing
%      singleton*.
%
%      H = GAUSSJORDANFORM returns the handle to a new GAUSSJORDANFORM or the handle to
%      the existing singleton*.
%
%      GAUSSJORDANFORM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAUSSJORDANFORM.M with the given input arguments.
%
%      GAUSSJORDANFORM('Property','Value',...) creates a new GAUSSJORDANFORM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gaussJordanForm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gaussJordanForm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gaussJordanForm

% Last Modified by GUIDE v2.5 16-Oct-2016 19:13:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gaussJordanForm_OpeningFcn, ...
                   'gui_OutputFcn',  @gaussJordanForm_OutputFcn, ...
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


% --- Executes just before gaussJordanForm is made visible.
function gaussJordanForm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gaussJordanForm (see VARARGIN)

% Choose default command line output for gaussJordanForm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gaussJordanForm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gaussJordanForm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %%%%%%%%%%%%%%%%%IMAGEN PARA REGRESAR%%%%%%%%%%%%%5
imagen=imread('regresarNB.png');
imagen1=imresize(imagen,[70 85]);

set(handles.pushbutton8,'CData',imagen1);
%%%%%%%%%%%%%%%%%IMAGEN PARA AYUDA%%%%%%%%%%%%%5
ayuda=imread('Ayudan.png');
imagen2=imresize(ayuda,[60 67]);

set(handles.pushbutton9,'CData',imagen2);
% Get default command line output from handles structure











varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filas=str2double(get(handles.edit4,'String'));
%columnas=str2double(get(handles.edit5,'String'));
num_elem=cell(filas,filas);
num_elem(:,:)={''};
set(handles.uitable3,'Data',num_elem);
set(handles.uitable3,'ColumnEditable',true());

num_elem=cell(filas,1);
num_elem(:,:)={''};
set(handles.uitable5,'Data',num_elem);
set(handles.uitable5,'ColumnEditable',true());



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tabla=get(handles.uitable3,'Data');
tabla=str2double(tabla);

tabla2=get(handles.uitable5,'Data');
tabla2=str2double(tabla2);


resultado=GaussJordan([tabla tabla2]);
if(length(find(isnan(resultado))) > 0)
	msgbox('Ecuaciones Linealmente Dependientes');
    set(handles.uitable4,'Visible','off');
else
	set(handles.uitable4, 'Data',resultado); 
    set(handles.uitable4,'Visible','on');
end








% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes6


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)



set(handles.uitable4,'data',{' ';' ';' ';' '});



% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)

set(handles.uitable5,'data',{' ';' ';' ';' '});
set(handles.uitable3,'data',{' ';' ';' ';' '});
set(handles.edit4,'String','');
set(handles.edit4,'String','');


% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)






% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
AyudaMet4;
