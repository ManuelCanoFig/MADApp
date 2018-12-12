function varargout = InterfazDiodos1(varargin)
% INTERFAZDIODOS1 MATLAB code for InterfazDiodos1.fig
%      INTERFAZDIODOS1, by itself, creates a new INTERFAZDIODOS1 or raises the existing
%      singleton*.
%
%      H = INTERFAZDIODOS1 returns the handle to a new INTERFAZDIODOS1 or the handle to
%      the existing singleton*.
%
%      INTERFAZDIODOS1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZDIODOS1.M with the given input arguments.
%
%      INTERFAZDIODOS1('Property','Value',...) creates a new INTERFAZDIODOS1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InterfazDiodos1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InterfazDiodos1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InterfazDiodos1

% Last Modified by GUIDE v2.5 29-Nov-2016 12:00:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazDiodos1_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazDiodos1_OutputFcn, ...
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


% --- Executes just before InterfazDiodos1 is made visible.
function InterfazDiodos1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InterfazDiodos1 (see VARARGIN)

% Choose default command line output for InterfazDiodos1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes InterfazDiodos1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InterfazDiodos1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

 a=imread('regresarNB.png');
 imagen1=imresize(a,[80 106]);
 set(handles.pushbutton5,'CData',imagen1)

varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MediaOndaa
close InterfazDiodos1

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OndaCompleta
close InterfazDiodos1

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RectificadorPuente
close InterfazDiodos1

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Interfaz1
close InterfazDiodos1


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Interfaz1
close InterfazDiodos1
