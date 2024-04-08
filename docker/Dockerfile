FROM eurogroep.azurecr.io/eurotec/lowpad.robot.base:11.15.0 
ARG USERNAME=jeanine 
ARG USER_UID=1000 
ARG USER_GID=$USER_UID 
 
RUN apt update && apt-get install ros-foxy-realsense2-camera ros-foxy-pointcloud-to-laserscan -y
# Create the user 
RUN apt-get update && apt-get -y install bash-completion 
RUN groupadd --gid $USER_GID $USERNAME \ 
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \ 
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \ 
    && chmod 0440 /etc/sudoers.d/$USERNAME \ 
    && usermod -a -G adm,dialout,cdrom,sudo,dip,plugdev,video $USERNAME 
ENV SHELL /bin/bash 
ENV DISPLAY unix:1 
 
USER $USERNAME 
WORKDIR /home/jeanine/dev/Lowpad.Robot 
RUN git config --global user.email "jeanine.vanbruggen@lowpad.com" 
RUN git config --global user.name "Jeanine van Bruggen" 

CMD ["/bin/bash"] 