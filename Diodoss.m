function varargout = Diodoss(varargin)
% DIODOSS MATLAB code for Diodoss.fig
%      DIODOSS, by itself, creates a new DIODOSS or raises the existing
%      singleton*.
%
%      H = DIODOSS returns the handle to a new DIODOSS or the handle to
%      the existing singleton*.
%
%      DIODOSS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIODOSS.M with the given input arguments.
%
%      DIODOSS('Property','Value',...) creates a new DIODOSS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Diodoss_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Diodoss_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Diodoss

% Last Modified by GUIDE v2.5 28-Nov-2016 18:36:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Diodoss_OpeningFcn, ...
                   'gui_OutputFcn',  @Diodoss_OutputFcn, ...
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


% --- Executes just before Diodoss is made visible.
function Diodoss_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Diodoss (see VARARGIN)

% Choose default command line output for Diodoss
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Diodoss wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Diodoss_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in media_onda.
function media_onda_Callback(hObject, eventdata, handles)
% hObject    handle to media_onda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MediaOndaa

% --- Executes on button press in rectificador_puente.
function rectificador_puente_Callback(hObject, eventdata, handles)
% hObject    handle to rectificador_puente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RectificadorPuente

% --- Executes on button press in onda_completa.
function onda_completa_Callback(hObject, eventdata, handles)
% hObject    handle to onda_completa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OndaCompleta


% --- Executes on button press in regresar.
function regresar_Callback(hObject, eventdata, handles)
% hObject    handle to regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
Intefaz
