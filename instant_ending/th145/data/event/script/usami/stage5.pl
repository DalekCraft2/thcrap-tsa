#========================================================================
#	俎q�X�g�[���[
#	�X�e�[�W5�@VS�j����
#	�ꏊ�F�P�j��
#	�X�e�[�W�^�C�g��
#	   �u�ꐡ�@�t�̎��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"

#�t�F�C�X�摜
,DefineObject,usami,-360,0,false
,DefineObject,sinmyoumaru,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(702);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,usami_label,50,360,false
,DefineObject,sinmyoumaru_label,1120,360,false

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,usami,-1280	,


,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�n��͉������d�����炯��\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�d���Ȃ�ĕ|���Ȃ�\n�Ȃ�Ă����čς݂܂���\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_�]1,0,0
����ς�d����\n�|�������c�c\,a11x2,0,0
,ClearBalloon,usami

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,sinmyoumaru,-1280,

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
���[�A�N�H\,a05x2,0,0
,ClearBalloon,sinmyoumaru

#�Љ�J�b�g�\���@�j���ۂ́u�j����_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,sinmyoumaru
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���A�M����\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
���[�A���̎��̕ϑԁI\n���Ŏ��̍���ɋ���I\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
����[\n����ς�����[�I\n�������[\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�����[\n����ȏ��܂Œǂ���\n���₪�������[\,a15x3,0,0
,ClearBalloon,sinmyoumaru



,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
,th145_Hide,sinmyoumaru,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,sinmyoumaru
�Ƃ��o���Ă��܂���\n�����E�������Ȃ�\,a11x2,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,usami		,
����Ȑ������������Ȃ�\n\R[���z��|������]���̂Ă����񂶂�Ȃ���\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���č��͂���ȗ]�T�������Ă�\n�ꍇ���ᖳ��������[\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�܂��ƂɋA���i��\n�������Ă��Ȃ��̂�\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
