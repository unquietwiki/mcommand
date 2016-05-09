# mcommand
# Michael Adams, unquietwiki.com
# Version 09092012
# Microsoft Public License

QUOTE = "\""
DIRMARK = "\\"

require "mscorlib"
require "System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
require "System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"

class MainForm < System::Windows::Forms::Form
	def initialize()
		self.InitializeComponent()
	end

	def InitializeComponent()
		@tbTD = System::Windows::Forms::TextBox.new()
		@tbSE = System::Windows::Forms::TextBox.new()
		@label1 = System::Windows::Forms::Label.new()
		@tbNE = System::Windows::Forms::TextBox.new()
		@label2 = System::Windows::Forms::Label.new()
		@label3 = System::Windows::Forms::Label.new()
		@tbSD = System::Windows::Forms::TextBox.new()
		@label5 = System::Windows::Forms::Label.new()
		@tbCMD = System::Windows::Forms::TextBox.new()
		@label7 = System::Windows::Forms::Label.new()
		@btnSD = System::Windows::Forms::Button.new()
		@btnTD = System::Windows::Forms::Button.new()
		@label6 = System::Windows::Forms::Label.new()
		@btnCMD = System::Windows::Forms::Button.new()
		@btnExecute = System::Windows::Forms::Button.new()
		@fbd = System::Windows::Forms::FolderBrowserDialog.new()
		@ofd = System::Windows::Forms::OpenFileDialog.new()
		@pbCMD = System::Windows::Forms::ProgressBar.new()
		@btnPD = System::Windows::Forms::Button.new()
		@label4 = System::Windows::Forms::Label.new()
		@tbPD = System::Windows::Forms::TextBox.new()
		@label8 = System::Windows::Forms::Label.new()
		@tbArguments = System::Windows::Forms::TextBox.new()
		@lblAuthor = System::Windows::Forms::Label.new()
		self.SuspendLayout()
		# 
		# tbTD
		# 
		@tbTD.Location = System::Drawing::Point.new(427, 198)
		@tbTD.Name = "tbTD"
		@tbTD.Size = System::Drawing::Size.new(256, 22)
		@tbTD.TabIndex = 11
		# 
		# tbSE
		# 
		@tbSE.Location = System::Drawing::Point.new(26, 249)
		@tbSE.Name = "tbSE"
		@tbSE.Size = System::Drawing::Size.new(113, 22)
		@tbSE.TabIndex = 13
		@tbSE.Text = ".old"
		# 
		# label1
		# 
		@label1.Location = System::Drawing::Point.new(26, 125)
		@label1.Name = "label1"
		@label1.Size = System::Drawing::Size.new(657, 23)
		@label1.TabIndex = 5
		@label1.Text = "!S! = source file !N! = new file"
		@label1.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# tbNE
		# 
		@tbNE.Location = System::Drawing::Point.new(168, 249)
		@tbNE.Name = "tbNE"
		@tbNE.Size = System::Drawing::Size.new(114, 22)
		@tbNE.TabIndex = 15
		# 
		# label2
		# 
		@label2.Location = System::Drawing::Point.new(26, 223)
		@label2.Name = "label2"
		@label2.Size = System::Drawing::Size.new(113, 23)
		@label2.TabIndex = 12
		@label2.Text = "Source Ext"
		@label2.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# label3
		# 
		@label3.Location = System::Drawing::Point.new(168, 223)
		@label3.Name = "label3"
		@label3.Size = System::Drawing::Size.new(114, 23)
		@label3.TabIndex = 14
		@label3.Text = "New Ext (optional)"
		@label3.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# tbSD
		# 
		@tbSD.Location = System::Drawing::Point.new(26, 198)
		@tbSD.Name = "tbSD"
		@tbSD.Size = System::Drawing::Size.new(256, 22)
		@tbSD.TabIndex = 8
		# 
		# label5
		# 
		@label5.Location = System::Drawing::Point.new(26, 175)
		@label5.Name = "label5"
		@label5.Size = System::Drawing::Size.new(198, 23)
		@label5.TabIndex = 6
		@label5.Text = "Source Directory"
		@label5.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# tbCMD
		# 
		@tbCMD.Location = System::Drawing::Point.new(26, 34)
		@tbCMD.Name = "tbCMD"
		@tbCMD.Size = System::Drawing::Size.new(657, 22)
		@tbCMD.TabIndex = 2
		# 
		# label7
		# 
		@label7.Location = System::Drawing::Point.new(26, 8)
		@label7.Name = "label7"
		@label7.Size = System::Drawing::Size.new(599, 23)
		@label7.TabIndex = 0
		@label7.Text = "Command"
		@label7.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# btnSD
		# 
		@btnSD.Location = System::Drawing::Point.new(230, 175)
		@btnSD.Name = "btnSD"
		@btnSD.Size = System::Drawing::Size.new(52, 23)
		@btnSD.TabIndex = 7
		@btnSD.Text = "Select"
		@btnSD.UseVisualStyleBackColor = true
		@btnSD.Click { |sender, e| self.BtnSDClick(sender, e) }
		# 
		# btnTD
		# 
		@btnTD.Location = System::Drawing::Point.new(631, 175)
		@btnTD.Name = "btnTD"
		@btnTD.Size = System::Drawing::Size.new(52, 23)
		@btnTD.TabIndex = 10
		@btnTD.Text = "Select"
		@btnTD.UseVisualStyleBackColor = true
		@btnTD.Click { |sender, e| self.BtnTDClick(sender, e) }
		# 
		# label6
		# 
		@label6.Location = System::Drawing::Point.new(427, 175)
		@label6.Name = "label6"
		@label6.Size = System::Drawing::Size.new(198, 23)
		@label6.TabIndex = 9
		@label6.Text = "Target Directory (blank = SD)"
		@label6.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# btnCMD
		# 
		@btnCMD.Location = System::Drawing::Point.new(631, 8)
		@btnCMD.Name = "btnCMD"
		@btnCMD.Size = System::Drawing::Size.new(52, 23)
		@btnCMD.TabIndex = 1
		@btnCMD.Text = "Select"
		@btnCMD.UseVisualStyleBackColor = true
		@btnCMD.Click { |sender, e| self.BtnCMDClick(sender, e) }
		# 
		# btnExecute
		# 
		@btnExecute.Location = System::Drawing::Point.new(608, 322)
		@btnExecute.Name = "btnExecute"
		@btnExecute.Size = System::Drawing::Size.new(75, 23)
		@btnExecute.TabIndex = 19
		@btnExecute.Text = "&Execute"
		@btnExecute.UseVisualStyleBackColor = true
		@btnExecute.Click { |sender, e| self.BtnExecuteClick(sender, e) }
		# 
		# pbCMD
		# 
		@pbCMD.Location = System::Drawing::Point.new(26, 351)
		@pbCMD.Name = "pbCMD"
		@pbCMD.Size = System::Drawing::Size.new(657, 23)
		@pbCMD.Step = 1
		@pbCMD.TabIndex = 20
		# 
		# btnPD
		# 
		@btnPD.Location = System::Drawing::Point.new(631, 223)
		@btnPD.Name = "btnPD"
		@btnPD.Size = System::Drawing::Size.new(52, 23)
		@btnPD.TabIndex = 17
		@btnPD.Text = "Select"
		@btnPD.UseVisualStyleBackColor = true
		@btnPD.Click { |sender, e| self.BtnPDClick(sender, e) }
		# 
		# label4
		# 
		@label4.Location = System::Drawing::Point.new(427, 223)
		@label4.Name = "label4"
		@label4.Size = System::Drawing::Size.new(198, 23)
		@label4.TabIndex = 16
		@label4.Text = "Program Directory (optional)"
		@label4.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# tbPD
		# 
		@tbPD.Location = System::Drawing::Point.new(427, 246)
		@tbPD.Name = "tbPD"
		@tbPD.Size = System::Drawing::Size.new(256, 22)
		@tbPD.TabIndex = 18
		# 
		# label8
		# 
		@label8.Location = System::Drawing::Point.new(26, 59)
		@label8.Name = "label8"
		@label8.Size = System::Drawing::Size.new(599, 23)
		@label8.TabIndex = 3
		@label8.Text = "Arguments"
		@label8.TextAlign = System::Drawing::ContentAlignment.MiddleCenter
		# 
		# tbArguments
		# 
		@tbArguments.Location = System::Drawing::Point.new(26, 85)
		@tbArguments.Name = "tbArguments"
		@tbArguments.Size = System::Drawing::Size.new(657, 22)
		@tbArguments.TabIndex = 4
		# 
		# lblAuthor
		# 
		@lblAuthor.Location = System::Drawing::Point.new(26, 332)
		@lblAuthor.Name = "lblAuthor"
		@lblAuthor.Size = System::Drawing::Size.new(314, 18)
		@lblAuthor.TabIndex = 21
		@lblAuthor.Text = "mcommand: Michael Adams; unquietwiki.com; 9-9-2012 B"
		# 
		# MainForm
		# 
		self.ClientSize = System::Drawing::Size.new(713, 386)
		self.Controls.Add(@lblAuthor)
		self.Controls.Add(@label8)
		self.Controls.Add(@tbArguments)
		self.Controls.Add(@btnPD)
		self.Controls.Add(@label4)
		self.Controls.Add(@tbPD)
		self.Controls.Add(@pbCMD)
		self.Controls.Add(@btnExecute)
		self.Controls.Add(@btnCMD)
		self.Controls.Add(@btnTD)
		self.Controls.Add(@label6)
		self.Controls.Add(@btnSD)
		self.Controls.Add(@label7)
		self.Controls.Add(@tbCMD)
		self.Controls.Add(@label5)
		self.Controls.Add(@tbSD)
		self.Controls.Add(@label3)
		self.Controls.Add(@label2)
		self.Controls.Add(@tbNE)
		self.Controls.Add(@label1)
		self.Controls.Add(@tbSE)
		self.Controls.Add(@tbTD)
		self.Name = "MainForm"
		self.Text = "mcommand"
		self.ResumeLayout(false)
		self.PerformLayout()
	end

	def BtnSDClick(sender, e)
		@fbd.ShowDialog
		@tbSD.Text = @fbd.SelectedPath
	end

	def BtnTDClick(sender, e)
		@fbd.ShowDialog
		@tbTD.Text = @fbd.SelectedPath
	end

	def BtnCWDClick(sender, e)
		@fbd.ShowDialog
		@tbCWD.Text = @fbd.SelectedPath
	end

	def BtnCMDClick(sender, e)
		@ofd.ShowDialog
		@tbCMD.Text = @ofd.FileName
	end
	
	def BtnPDClick(sender, e)
		@fbd.ShowDialog
		@tbPD.Text = @fbd.SelectedPath
	end
	
	#The whole shebang
	def BtnExecuteClick(sender, e)
		
		#Common variables
		@k = [@tbCMD.Text.to_s(),@tbArguments.Text.to_s(),@tbSD.Text.to_s(),@tbTD.Text.to_s(),@tbSE.Text.to_s(),@tbNE.Text.to_s(),@tbPD.Text.to_s()]
		
		#Get filenames with old extension + reset progress bar
		Dir.chdir(@k[2])
		@filenames = Dir.glob("*" + @k[4])
		
		#Reset progressbar
		@pbCMD.Value = 0
		@pbCMD.Maximum = @filenames.size
		
		System::Windows::Forms::MessageBox.Show("Will attempt to process " + @filenames.size.to_s() + " files","mcommand")
		
		#Check for new extension usage		
		if @k[5] != ""
			if @k[1].include? "!N!"
				@newext = true
			end
		end
		
		#Process files
		@filenames.each do |filename|
			#Use source directory if target not defined
			if @k[3] == ""
				@k[3] = @k[2]
			end
			#Build arguments
			@commandarg = @k[1]			
			if @newext
				@newfilename = QUOTE + @k[3] + DIRMARK + filename.sub(@k[4],@k[5]) + QUOTE
				@commandarg = @commandarg.sub("!N!",@newfilename).sub("!S!",QUOTE + @k[2] + DIRMARK + filename + QUOTE)
			elsif
				@commandarg = @commandarg.sub("!S!",QUOTE + @k[2] + DIRMARK + filename + QUOTE)
			end
			#Change to program directory, if specified
			if @k[6] != ""
				Dir.chdir(@k[6])
			end			
			@process = System::Diagnostics::Process.new()
			@process.StartInfo.FileName = @k[0]
			@process.StartInfo.Arguments = @commandarg
			@process.StartInfo.CreateNoWindow = true
			@process.StartInfo.UseShellExecute = false
			@process.Start()
			@process.WaitForExit()
			@pbCMD.PerformStep()
		end
		System::Windows::Forms::MessageBox.Show("Work complete!","mcommand")
	end
	
end