function varargout = AyudaMet41(varargin)
% AYUDAMET41 MATLAB code for AyudaMet41.fig
%      AYUDAMET41, by itself, creates a new AYUDAMET41 or raises the existing
%      singleton*.
%
%      H = AYUDAMET41 returns the handle to a new AYUDAMET41 or the handle to
%      the existing singleton*.
%
%      AYUDAMET41('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYUDAMET41.M with the given input arguments.
%
%      AYUDAMET41('Property','Value',...) creates a new AYUDAMET41 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyudaMet41_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyudaMet41_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyudaMet41

% Last Modified by GUIDE v2.5 26-Nov-2016 13:45:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AyudaMet41_OpeningFcn, ...
                   'gui_OutputFcn',  @AyudaMet41_OutputFcn, ...
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


% --- Executes just before AyudaMet41 is made visible.
function AyudaMet41_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyudaMet41 (see VARARGIN)

% Choose default command line output for AyudaMet41
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyudaMet41 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyudaMet41_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 %%%%%%%%%%%%%%%%%IMAGEN PARA GAUSS%%%%%%%%%%%%%5
imagen=imread('11.png');
imagen1=imresize(imagen,[100 200]);

set(handles.pushbutton1,'CData',imagen1);
%%%%%%%%%%%%%%%%%%IMAGEN PARA GAUSS%%%%%%%%%%%%%5
imagen2=imread('14.png');
imagen3=imresize(imagen2,[100 205]);

set(handles.pushbutton2,'CData',imagen3);
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
