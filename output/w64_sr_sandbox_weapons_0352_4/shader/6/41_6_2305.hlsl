// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(7, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).yzwx;
    r2.xyzw = t0.Load(r2.w).yzwx;
    r0.yz = (int2)r0.yy + int2(5,6);
    r6.xyzw = t0.Load(r0.y).yzwx;
    r7.xy = t0.Load(r0.z).yx;
    r8.xyz = r5.wxy * float3(2,2,2) + float3(-1,-1,-1);
    r0.yzw = saturate(r2.wxy);
    r9.z = saturate(r5.z);
    r10.xyzw = r9.zzzz * float4(0.367646992,5.50000095,0.173913002,4.6923089) + float4(0,-1.16333401,0.398986012,-2.658463);
    r11.x = r9.z * 0.323944002 + 0.676056027;
    r12.xyzw = cmp(r9.zzzz >= float4(0,0.226667002,0.293332994,0.676666975));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r11.yz = cmp(r9.zz >= float2(0.763333023,1));
    r11.zw = r11.yz ? float2(1,1) : 0;
    r12.xyz = r12.xyz + r12.yzw;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r10.xyz = r12.xyz * r10.xyz;
    r12.xy = r11.zw + r11.ww;
    r12.xy = float2(9.99999997e-007,9.99999997e-007) + r12.xy;
    r12.xy = float2(0.5,0.5) * r12.xy;
    r12.xy = frac(r12.xy);
    r11.x = r12.x * r11.x;
    r11.z = 2;
    r10.xy = r11.zz * r10.xy;
    r11.x = 2 * r11.x;
    r10.x = r10.x + r10.y;
    r10.x = r11.z * r10.z + r10.x;
    r10.x = r10.w * r12.w + r10.x;
    r10.y = r12.y * 4 + r11.x;
    r10.y = r11.w * 1 + r10.y;
    r10.x = saturate(r11.y ? r10.y : r10.x);
    r10.xy = float2(-0,-0.5) + r10.xx;
    r10.xy = saturate(r10.xy + r10.xy);
    r10.yz = float2(0.5,-0.5) * r10.xy;
    r10.x = dot(float2(1,1), r10.yz);
    r10.w = 0;
    r10.xyz = float3(1,0.5,1) + r10.xyw;
    r10.w = saturate(r3.w);
    r11.xyzw = r10.wwww * float4(0,4.61653614,25,3.37007093) + float4(0,-8.60983944,0,0.623232007);
    r12.x = r10.w * r10.w;
    r11.xy = r11.xy * r12.xx + r11.zw;
    r12.xyzw = cmp(r10.wwww >= float4(0,0.0399999991,0.243332997,1));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r12.xyz = r12.xyz + r12.yzw;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r12.xz = r12.xz * r11.xy;
    r11.xy = r12.xy + r12.xy;
    r10.w = r11.x + r11.y;
    r10.w = saturate(r12.z * 2 + r10.w);
    r10.xyz = r10.xyz * r10.www;
    r11.xyz = r0.yzz * float3(0.349999994,-466.472321,0.440212011) + float3(0.400000006,101.530609,-1.33415604);
    r12.xy = r0.zz * float2(0,1.34767795) + float2(0,0.546266973);
    r0.y = r0.z * r0.z;
    r11.yz = r11.yz * r0.yy + r12.xy;
    r12.xyz = cmp(r0.zzz >= float3(0,0.140000001,1));
    r12.xyw = r12.xyz ? float3(1,1,1) : 0;
    r12.xyz = r12.xyw + r12.yww;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r0.yz = r12.xy * r11.yz;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r12.z * 2 + r0.y;
    r0.y = saturate(r12.w * 1 + r0.y);
    r0.y = r0.y * -0.75 + 1;
    r0.z = saturate(cb0[1].y * 0.200000003 + -1);
    r0.z = r0.z * 0.75 + 0.25;
    r12.x = r0.y * r0.z;
    r11.yzw = r0.www * float3(0.315068007,2.72413802,0.275362015) + float3(0,-0.879310012,0.724637985);
    r13.xyzw = cmp(r0.wwww >= float4(0,0.36500001,0.654999971,1));
    r13.xyzw = r13.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r13.xyz + r13.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * r11.yzw;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r0.w * 2 + r0.y;
    r0.y = saturate(r13.w * 1 + r0.y);
    r13.xyz = r0.yyy * float3(-0.251601011,-0.251558989,-0.287757993) + float3(0.273892999,0.274163991,0.312391996);
    r12.z = saturate(r7.x);
    r0.x = mad(11, (int)vThreadID.x, (int)r0.x);
    r9.xy = r11.xx;
    r9.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r9.xyzw
    r9.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.yyyy, r3.xyzw
    r8.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.zzzz, r8.xyzw
    r10.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.wwww, r10.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r13.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r13.xyzw
    r12.y = r4.w;
    r12.w = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r12.xyzw
    r5.w = r2.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.w = r6.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.yz = (int2)r0.xx + int2(9,10);
    r6.w = r7.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
    r7.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r7.xyzw
  }
  return;
}