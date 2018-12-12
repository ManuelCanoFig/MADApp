function varargout = InterfazTransistores1(varargin)
% INTERFAZTRANSISTORES1 MATLAB code for InterfazTransistores1.fig
%      INTERFAZTRANSISTORES1, by itself, creates a new INTERFAZTRANSISTORES1 or raises the existing
%      singleton*.
%
%      H = INTERFAZTRANSISTORES1 returns the handle to a new INTERFAZTRANSISTORES1 or the handle to
%      the existing singleton*.
%
%      INTERFAZTRANSISTORES1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZTRANSISTORES1.M with the given input arguments.
%
%      INTERFAZTRANSISTORES1('Property','Value',...) creates a new INTERFAZTRANSISTORES1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InterfazTransistores1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InterfazTransistores1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InterfazTransistores1

% Last Modified by GUIDE v2.5 29-Nov-2016 12:04:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazTransistores1_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazTransistores1_OutputFcn, ...
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


% --- Executes just before InterfazTransistores1 is made visible.
function InterfazTransistores1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InterfazTransistores1 (see VARARGIN)

% Choose default command line output for InterfazTransistores1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes InterfazTransistores1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InterfazTransistores1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

 a=imread('regresarNB.png');
 imagen1=imresize(a,[80 100]);
 set(handles.pushbutton6,'CData',imagen1)

varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PolarizaciondeBase
close InterfazTransistores1

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PolarizaciondeEmisor
close InterfazTransistores1

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
PolarizacionDivisordevoltaje
close InterfazTransistores1

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
InterfazExcitadores1
close InterfazTransistores1

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Interfaz1
close InterfazTransistores1


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Interfaz1
close InterfazTransistores1
