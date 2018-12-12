function varargout = Interfazsim(varargin)
% INTERFAZSIM MATLAB code for Interfazsim.fig
%      INTERFAZSIM, by itself, creates a new INTERFAZSIM or raises the existing
%      singleton*.
%
%      H = INTERFAZSIM returns the handle to a new INTERFAZSIM or the handle to
%      the existing singleton*.
%
%      INTERFAZSIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZSIM.M with the given input arguments.
%
%      INTERFAZSIM('Property','Value',...) creates a new INTERFAZSIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Interfazsim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Interfazsim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Interfazsim

% Last Modified by GUIDE v2.5 29-Nov-2016 17:42:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Interfazsim_OpeningFcn, ...
                   'gui_OutputFcn',  @Interfazsim_OutputFcn, ...
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


% --- Executes just before Interfazsim is made visible.
function Interfazsim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Interfazsim (see VARARGIN)

% Choose default command line output for Interfazsim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Interfazsim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Interfazsim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%IMAGEN PARA REGRESAR%%%%%%%%%%%%%5
imagen=imread('regresarNB.png');
imagen1=imresize(imagen,[80 100]);

set(handles.pushbutton5,'CData',imagen1);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in numerosaleatorios.
function numerosaleatorios_Callback(hObject, eventdata, handles)
% hObject    handle to numerosaleatorios (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
GeneradorNumerosAleatorios

% --- Executes on button press in multiplicativo.
function multiplicativo_Callback(hObject, eventdata, handles)
% hObject    handle to multiplicativo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MetodoCongruencialMultiplicativo

% --- Executes on button press in mixto.
function mixto_Callback(hObject, eventdata, handles)
% hObject    handle to mixto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MetodoCongruencialMixto


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
