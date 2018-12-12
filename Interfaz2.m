function varargout = Interfaz2(varargin)
% INTERFAZ2 MATLAB code for Interfaz2.fig
%      INTERFAZ2, by itself, creates a new INTERFAZ2 or raises the existing
%      singleton*.
%
%      H = INTERFAZ2 returns the handle to a new INTERFAZ2 or the handle to
%      the existing singleton*.
%
%      INTERFAZ2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ2.M with the given input arguments.
%
%      INTERFAZ2('Property','Value',...) creates a new INTERFAZ2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Interfaz2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Interfaz2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Interfaz2

% Last Modified by GUIDE v2.5 29-Nov-2016 11:55:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Interfaz2_OpeningFcn, ...
                   'gui_OutputFcn',  @Interfaz2_OutputFcn, ...
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


% --- Executes just before Interfaz2 is made visible.
function Interfaz2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Interfaz2 (see VARARGIN)

% Choose default command line output for Interfaz2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Interfaz2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Interfaz2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%IMAGEN PARA REGRESAR%%%%%%%%%%%%%5
imagen=imread('regresarNB.png');
imagen1=imresize(imagen,[75 110]);

set(handles.pushbutton7,'CData',imagen1);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in media_onda.
function media_onda_Callback(hObject, eventdata, handles)
% hObject    handle to media_onda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MediaOndaFiltro


% --- Executes on button press in multiplicador.
function multiplicador_Callback(hObject, eventdata, handles)
% hObject    handle to multiplicador (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Multiplicador


% --- Executes on button press in rectificadorpuentefiltro.
function rectificadorpuentefiltro_Callback(hObject, eventdata, handles)
% hObject    handle to rectificadorpuentefiltro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RectificadorPuenteFiltro

% --- Executes on button press in ondacompletaconfiltro.
function ondacompletaconfiltro_Callback(hObject, eventdata, handles)
% hObject    handle to ondacompletaconfiltro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OndaCompletaFiltro


% --- Executes on button press in regresar_ant.
function regresar_ant_Callback(hObject, eventdata, handles)
% hObject    handle to regresar_ant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
Intefaz


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
Interfaz1
close InterfazCapacitores1
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
