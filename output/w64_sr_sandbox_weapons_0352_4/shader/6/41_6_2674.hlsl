// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[2].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.z;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r2.z = 2.32830644e-010 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.xy = float2(2.32830644e-010,2.32830644e-010) * r3.yz;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.z = 2.32830644e-010 * r3.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r4.w = 2.32830644e-010 * r3.z;
    r0.w = r0.w * 2.32830644e-010 + r2.z;
    r3.z = 0.5 * r0.w;
    r5.xy = r0.ww * float2(0.411428511,-13.3842888) + float2(-0.196070999,65.2928772);
    r5.zw = r0.ww * float2(0.125,-25.1400146) + float2(0,12.7557182);
    r3.z = r3.z * r3.z;
    r3.zw = r5.xy * r3.zz + r5.zw;
    r5.xyz = cmp(r0.www >= float3(0,1.33333397,2));
    r5.xyw = r5.xyz ? float3(1,1,1) : 0;
    r5.xyz = r5.xyw + r5.yww;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r3.zw = r5.xy * r3.zw;
    r3.zw = float2(2,2) * r3.zw;
    r0.w = r3.z + r3.w;
    r0.w = r5.z * 2 + r0.w;
    r0.w = saturate(r5.w * 1 + r0.w);
    r0.w = r0.w * 4.80000019 + 1;
    r2.w = 2.32830644e-010 * r3.x;
    r3.xz = r3.xx * float2(-3.1265826e-010,-9.76386957e-011) + float2(0.342857003,1.41935503);
    r3.w = r2.w * r2.w;
    r3.z = r3.z * r3.w;
    r3.x = r3.x * r3.w + 1;
    r3.x = min(1, r3.x);
    r3.x = r3.x * 2.5 + 2.5;
    r0.w = r3.x * r0.w;
    r3.x = min(1, r3.z);
    r3.zw = r3.yy * float2(-6.5788186e-010,-6.20156079e-011) + float2(1,0.266355008);
    r5.xyz = cmp(r3.yyy >= float3(0,1.23122534e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r5.xy = r5.xy + r5.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r3.yz = r5.xy * r3.zw;
    r3.yz = r3.yz + r3.yz;
    r3.y = saturate(r3.y + r3.z);
    r1.w = r3.y * 0.800000012 + 0.699999988;
    r3.y = cb10[1].x + 0.25;
    r3.z = cb10[0].x + 0.25;
    r3.yz = (int2)r3.yz;
    r5.xy = cb0[4].xy + r2.yz;
    r5.xy = r5.xy * float2(10,10) + float2(1,3);
    r5.xy = floor(r5.xy);
    r3.w = dot(r5.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.w = frac(r3.w);
    r3.w = r3.w * r3.w;
    r3.xw = float2(0.0349059999,251) * r3.xw;
    r3.w = frac(r3.w);
    r3.w = r3.w * 0.5 + -0.25;
    r3.w = 3.1415925 * r3.w;
    sincos(r3.w, r5.x, r6.x);
    r7.xyz = float3(0,0,1) * r5.xxx;
    r3.w = dot(r5.yyyy, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.w = frac(r3.w);
    r3.w = r3.w * r3.w;
    r3.w = 251 * r3.w;
    r3.w = frac(r3.w);
    r3.w = saturate(r3.w * 1.44444501 + -0.222222);
    r3.w = r3.w * 0.5 + -0.25;
    r3.w = 3.1415925 * r3.w;
    sincos(r3.w, r5.x, r8.x);
    r5.xyz = float3(0,1,0) * r5.xxx;
    r6.yzw = -cb9[r3.z+32].zxy * cb9[r3.y+32].yzx;
    r6.yzw = -cb9[r3.z+32].yzx * cb9[r3.y+32].zxy + -r6.yzw;
    r3.w = dot(-cb9[r3.z+32].xyz, cb9[r3.y+32].xyz);
    r9.w = -r3.w;
    r9.xyz = cb9[r3.z+32].www * cb9[r3.y+32].xyz + r6.yzw;
    r10.xyzw = cb9[r3.z+32].xyzw * float4(-1,-1,-1,1);
    r9.xyzw = cb9[r3.y+32].wwww * r10.xyzw + r9.xyzw;
    r11.xyzw = r9.zxyz * r7.yzyz;
    r6.yzw = -r7.zyy * r9.yzx + r11.xyz;
    r11.w = -r11.w;
    r11.xyz = r6.xxx * r9.xyz + r6.yzw;
    r7.w = r6.x;
    r6.xyzw = r9.wwww * r7.xyzw + r11.xyzw;
    r7.xyz = cb9[r3.z+32].zxy * r6.yzx;
    r7.xyz = cb9[r3.z+32].yzx * r6.zxy + -r7.xyz;
    r3.w = dot(cb9[r3.z+32].xyz, r6.xyz);
    r9.w = -r3.w;
    r9.xyz = cb9[r3.z+32].www * r6.xyz + r7.xyz;
    r6.xyzw = r6.wwww * cb9[r3.z+32].xyzw + r9.xyzw;
    r7.xyz = -cb9[r3.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r3.z+32].yzx * r6.zxy + -r7.xyz;
    r3.w = dot(-cb9[r3.z+32].xyz, r6.xyz);
    r9.w = -r3.w;
    r9.xyz = cb9[r3.z+32].www * r6.xyz + r7.xyz;
    r6.xyzw = r6.wwww * r10.xyzw + r9.xyzw;
    r7.xyzw = r6.zxyy * r5.yzzy;
    r7.xyz = -r5.zzy * r6.yzx + r7.xyz;
    r9.w = -r7.w;
    r9.xyz = r8.xxx * r6.xyz + r7.xyz;
    r5.w = r8.x;
    r5.xyzw = r6.wwww * r5.xyzw + r9.xyzw;
    r6.xyz = cb9[r3.z+32].zxy * r5.yzx;
    r6.xyz = cb9[r3.z+32].yzx * r5.zxy + -r6.xyz;
    r3.w = dot(cb9[r3.z+32].xyz, r5.xyz);
    r7.w = -r3.w;
    r7.xyz = cb9[r3.z+32].www * r5.xyz + r6.xyz;
    r5.xyzw = r5.wwww * cb9[r3.z+32].xyzw + r7.xyzw;
    r6.xyzw = float4(0.5,0,0,0) * r5.wwww;
    r6.xyzw = r5.zzyx * float4(-0,0.5,-0.5,0.5) + r6.xyzw;
    r7.xyz = r6.yzx * r5.zxy;
    r7.xyz = r5.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r5.www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * r5.xyz + r6.xyz;
    r3.yzw = cb9[r3.y+0].xyz + r6.xyz;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r6.x = (uint)r0.z;
    r6.x = 1.46291812e-009 * r6.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r3.x;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r3.x, r7.x);
    sincos(r6.x, r6.x, r8.x);
    r7.y = r6.x * r3.x;
    r7.z = r8.x * r3.x;
    r6.xyz = r7.xyz * r0.www;
    r7.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.y+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.y+32].zxy * r5.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r5.zxy + -r8.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r5.xyz);
    r9.w = -r0.z;
    r9.xyz = cb9[r0.y+32].www * r5.xyz + r8.xyz;
    r8.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = r5.wwww * r8.xyzw + r9.xyzw;
    r8.xyz = cb9[r0.y+32].yzx * r3.wyz;
    r8.xyz = r3.zwy * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(r3.yzw, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r3.xyz = cb9[r0.y+32].www * r3.yzw;
    r3.w = 0;
    r3.xyzw = r8.xyzw + r3.xyzw;
    r8.xyz = -cb9[r0.y+32].zxy * r3.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r3.zxy + -r8.xyz;
    r3.xyz = cb9[r0.y+32].www * r3.xyz + r8.xyz;
    r0.yzw = r3.www * -cb9[r0.y+32].xyz + r3.xyz;
    r3.xyz = -r7.xyz + r0.yzw;
    r0.yzw = r6.zxy * -r5.yzx;
    r7.xyz = r6.yzx * -r5.zxy + -r0.yzw;
    r0.y = dot(r6.xyz, -r5.xyz);
    r7.w = -r0.y;
    r6.xyz = r5.www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r0.yzw = r6.yzx * r5.zxy;
    r0.yzw = r5.yzx * r6.zxy + -r0.yzw;
    r0.yzw = r5.www * r6.xyz + r0.yzw;
    r5.xyz = r6.www * r5.xyz + r0.yzw;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r5.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r3.xyzw
    r1.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.xyzw
  }
  return;
}