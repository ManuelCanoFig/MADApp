function varargout = AyudaMet5(varargin)
% AYUDAMET5 MATLAB code for AyudaMet5.fig
%      AYUDAMET5, by itself, creates a new AYUDAMET5 or raises the existing
%      singleton*.
%
%      H = AYUDAMET5 returns the handle to a new AYUDAMET5 or the handle to
%      the existing singleton*.
%
%      AYUDAMET5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYUDAMET5.M with the given input arguments.
%
%      AYUDAMET5('Property','Value',...) creates a new AYUDAMET5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyudaMet5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyudaMet5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyudaMet5

% Last Modified by GUIDE v2.5 26-Nov-2016 14:36:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AyudaMet5_OpeningFcn, ...
                   'gui_OutputFcn',  @AyudaMet5_OutputFcn, ...
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


% --- Executes just before AyudaMet5 is made visible.
function AyudaMet5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyudaMet5 (see VARARGIN)

% Choose default command line output for AyudaMet5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyudaMet5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyudaMet5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %%%%%%%%%%%%%%%%%IMAGEN PARA Trapecio%%%%%%%%%%%%%5
imagen=imread('15.png');
imagen1=imresize(imagen,[60 60]);

set(handles.pushbutton1,'CData',imagen1);
%%%%%%%%%%%%%%%%%IMAGEN PARA AYUDA%%%%%%%%%%%%%5
ayuda=imread('16.png');
imagen2=imresize(ayuda,[60 260]);

set(handles.pushbutton2,'CData',imagen2);
%%%%%%%%%%%%%%%%%IMAGEN PARA AYUDA%%%%%%%%%%%%%5
ayuda1=imread('17.png');
imagen3=imresize(ayuda1,[60 310]);

set(handles.pushbutton3,'CData',imagen3);
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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
AyudaMet51;
