function varargout = Intefaz(varargin)
% INTEFAZ MATLAB code for Intefaz.fig
%      INTEFAZ, by itself, creates a new INTEFAZ or raises the existing
%      singleton*.
%
%      H = INTEFAZ returns the handle to a new INTEFAZ or the handle to
%      the existing singleton*.
%
%      INTEFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEFAZ.M with the given input arguments.
%
%      INTEFAZ('Property','Value',...) creates a new INTEFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Intefaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Intefaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Intefaz

% Last Modified by GUIDE v2.5 16-Oct-2016 21:27:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Intefaz_OpeningFcn, ...
                   'gui_OutputFcn',  @Intefaz_OutputFcn, ...
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


% --- Executes just before Intefaz is made visible.
function Intefaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Intefaz (see VARARGIN)

% Choose default command line output for Intefaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Intefaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Intefaz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Diodos.
function Diodos_Callback(hObject, eventdata, handles)
% hObject    handle to Diodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Diodoss

% --- Executes on button press in capacitores.
function capacitores_Callback(hObject, eventdata, handles)
% hObject    handle to capacitores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Interfaz2
