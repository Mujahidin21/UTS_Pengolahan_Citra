function varargout = UTS(varargin)
% UTS MATLAB code for UTS.fig
%      UTS, by itself, creates a new UTS or raises the existing
%      singleton*.
%
%      H = UTS returns the handle to a new UTS or the handle to
%      the existing singleton*.
%
%      UTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UTS.M with the given input arguments.
%
%      UTS('Property','Value',...) creates a new UTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UTS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UTS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UTS

% Last Modified by GUIDE v2.5 08-May-2021 00:04:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UTS_OpeningFcn, ...
                   'gui_OutputFcn',  @UTS_OutputFcn, ...
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


% --- Executes just before UTS is made visible.
function UTS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UTS (see VARARGIN)

% Choose default command line output for UTS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UTS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UTS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.jpg','*.png'});
if ~isequal(filename,0)
    gambar=imread(fullfile(pathname,filename));
    axes(handles.axes1);
    imshow(gambar);
    title('Citra RGB');
    R = gambar(:,:,1);
    G = gambar(:,:,2);
    B = gambar(:,:,3);
else
    return
end
handles.gambar=gambar;
handles.R=R;
handles.G=G;
handles.B=B;
guidata(hObject,handles)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton5,'value',0)
set(handles.radiobutton4,'value',0)
set(handles.radiobutton1,'value',0)

gambar=handles.gambar;
R=handles.R;
G=handles.G;
B=handles.B;
axes(handles.axes1)
imshow(gambar)
title('Citra RGB')
axes(handles.axes2)
h=histogram(R,256);
h.FaceColor='r';
h.EdgeColor='r';
xlim([0,255])
grid on
hold on
h=histogram(B,256);
h.FaceColor='b';
h.EdgeColor='b';
xlim([0,255])
grid on
h=histogram(G,256);
h.FaceColor='g';
h.EdgeColor='g';
xlim([0,255])
grid on
hold on
title('histogram')


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton5,'value',0)
set(handles.radiobutton4,'value',0)
set(handles.pushbutton2,'value',0)

R=handles.R;
G=handles.G;
B=handles.B;

axes(handles.axes1)
blue=cat(3,R*0,G*0,B);
imshow(blue)
title('Warna Biru')

axes(handles.axes2)
h=histogram(B,256);
h.FaceColor='b';
h.EdgeColor='b';
xlim([0,255])
grid on
title('Histogram')
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.pushbutton2,'value',0)
set(handles.radiobutton1,'value',0)
set(handles.radiobutton5,'value',0)

R=handles.R;
G=handles.G;
B=handles.B;

axes(handles.axes1)
green=cat(3,R*0,G,B*0);
imshow(green)
title('Warna Hijau')

axes(handles.axes2)
h=histogram(G,256);
h.FaceColor='g';
h.EdgeColor='g';
xlim([0,255])
grid on
title('Histogram')
% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.pushbutton2,'value',0)
set(handles.radiobutton4,'value',0)
set(handles.radiobutton1,'value',0)

R=handles.R;
G=handles.G;
B=handles.B;
axes(handles.axes1)
Red=cat(3,R,G*0,B*0);
imshow(Red)
title('Warna Merah')
axes(handles.axes2)
h=histogram(R,256);
h.FaceColor='r';
h.EdgeColor='r';
xlim([0,255])
grid on
title('histogram')
% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton5,'value',0)
set(handles.radiobutton4,'value',0)
set(handles.pushbutton2,'value',0)

gambar=handles.gambar;
gambar_gray=rgb2gray(gambar);

axes(handles.axes1)
imshow(gambar_gray)
title('Citra Grayscale')

axes(handles.axes2)
h=histogram(gambar_gray,256);
h.FaceColor=[.5 .5 .5];
h.EdgeColor=[.5 .5 .5];
xlim([0,255])
grid on
title('Histogram')


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'value',1)
set(handles.radiobutton5,'value',0)
set(handles.radiobutton4,'value',0)
set(handles.radiobutton1,'value',0)
set(handles.pushbutton2,'value',0)
set(handles.pushbutton3,'value',0)
set(handles.pushbutton4,'value',0)

gambar=handles.gambar;
gambar_gray=rgb2gray(gambar);
gambar_bw=im2bw(gambar_gray);

axes(handles.axes1)
imshow(gambar_bw)
title('BINER')

axes(handles.axes2)
h=histogram(double(gambar_bw(:)),2);
h.FaceColor='k';
h.EdgeColor='w';
h.FaceAlpha=1;
xlim([0,1])
grid on
title('Histogram')