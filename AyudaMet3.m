function varargout = AyudaMet3(varargin)
% AYUDAMET3 MATLAB code for AyudaMet3.fig
%      AYUDAMET3, by itself, creates a new AYUDAMET3 or raises the existing
%      singleton*.
%
%      H = AYUDAMET3 returns the handle to a new AYUDAMET3 or the handle to
%      the existing singleton*.
%
%      AYUDAMET3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYUDAMET3.M with the given input arguments.
%
%      AYUDAMET3('Property','Value',...) creates a new AYUDAMET3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyudaMet3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyudaMet3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyudaMet3

% Last Modified by GUIDE v2.5 26-Nov-2016 12:34:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AyudaMet3_OpeningFcn, ...
                   'gui_OutputFcn',  @AyudaMet3_OutputFcn, ...
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


% --- Executes just before AyudaMet3 is made visible.
function AyudaMet3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyudaMet3 (see VARARGIN)

% Choose default command line output for AyudaMet3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyudaMet3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyudaMet3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %%%%%%%%%%%%%%%%%IMAGEN RAPHSON1%%%%%%%%%%%%%5
imagen=imread('raphson.jpg');
imagen1=imresize(imagen,[200 220]);

set(handles.pushbutton1,'CData',imagen1);
%%%%%%%%%%%%%%%%%IMAGEN PARA RAPHSON2%%%%%%%%%%%%%5
ayuda=imread('r.png');
imagen2=imresize(ayuda,[80 200]);

set(handles.pushbutton2,'CData',imagen2);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
AyudaMet31;

