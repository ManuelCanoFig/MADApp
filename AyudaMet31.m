function varargout = AyudaMet31(varargin)
% AYUDAMET31 MATLAB code for AyudaMet31.fig
%      AYUDAMET31, by itself, creates a new AYUDAMET31 or raises the existing
%      singleton*.
%
%      H = AYUDAMET31 returns the handle to a new AYUDAMET31 or the handle to
%      the existing singleton*.
%
%      AYUDAMET31('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AYUDAMET31.M with the given input arguments.
%
%      AYUDAMET31('Property','Value',...) creates a new AYUDAMET31 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AyudaMet31_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AyudaMet31_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AyudaMet31

% Last Modified by GUIDE v2.5 26-Nov-2016 12:49:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AyudaMet31_OpeningFcn, ...
                   'gui_OutputFcn',  @AyudaMet31_OutputFcn, ...
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


% --- Executes just before AyudaMet31 is made visible.
function AyudaMet31_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AyudaMet31 (see VARARGIN)

% Choose default command line output for AyudaMet31
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AyudaMet31 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AyudaMet31_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
