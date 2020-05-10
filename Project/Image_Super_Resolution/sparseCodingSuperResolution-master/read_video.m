% vidObj = VideoReader('./Data/Video/IMG_9856.MOV');
% parfor i = 1:vidObj.NumFrames
%     frame_h = read(vidObj, i);
%     imwrite(frame_h, strcat('/Users/yangchenye/Downloads/yang_h/yang_h_',num2str(i),'.png'),'png');
%     frame_l = imresize(frame_h, [480 270]); % 2160*3840 -> 270*480 upscaling factor = 8
%     imwrite(frame_l, strcat('/Users/yangchenye/Downloads/yang_l/yang_l_',num2str(i),'.png'),'png');
% end

vidObj = VideoReader('./Data/Video/motor.mov');
parfor i = 1:vidObj.NumFrames
    frame_h = read(vidObj, i);
    imwrite(frame_h, strcat('/Users/yangchenye/Downloads/motor_h/motor_h_',num2str(i),'.png'),'png');
    frame_l = imresize(frame_h, [180 320]); % 640*360 -> 320*180 upscaling factor = 2
    imwrite(frame_l, strcat('/Users/yangchenye/Downloads/motor_l/motor_l_',num2str(i),'.png'),'png');
end

