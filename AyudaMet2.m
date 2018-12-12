function varargout = AyudaMet2(varargin)
% AYUDAMET2 MATLAB code for AyudaMet2.fig
%      AYUDAMET2, by itself, creates a new AYUDAMET2 or raises the existing
%      singleton*.
%
%      H = AYUDAMET2 returns the handle to a new AYUDAMET2 or the handle to
%      the existing singleton*.
%
%      AYUDAMET2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYUDAMET2.M with the given input arguments.
%
%      AYUDAMET2('Property','Value',...) creates a new AYUDAMET2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyudaMet2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyudaMet2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyudaMet2

% Last Modified by GUIDE v2.5 26-Nov-2016 10:58:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AyudaMet2_OpeningFcn, ...
                   'gui_OutputFcn',  @AyudaMet2_OutputFcn, ...
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


% --- Executes just before AyudaMet2 is made visible.
function AyudaMet2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyudaMet2 (see VARARGIN)

% Choose default command line output for AyudaMet2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyudaMet2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyudaMet2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%IMAGEN DE FORMULA%%%%%%%%%%%%%5
imagen=imread('newton3.png');
imagen1=imresize(imagen,[55 500]);

set(handles.pushbutton3,'CData',imagen1);
%%%%%%%%%%%%%%%%%IMAGEN PARA AYUDA%%%%%%%%%%%%%5
ayuda=imread('newton4.png');
imagen2=imresize(ayuda,[196 150]);

set(handles.pushbutton4,'CData',imagen2);
% Get default command line output from handles structure
varargout{1} = handles.output;




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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
AyudaMet21;
